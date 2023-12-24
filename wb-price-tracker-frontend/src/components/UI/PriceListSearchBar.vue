<template>
	<form @submit.prevent="handleForm" class="price-list-search-bar">
		<div v-for="(search_field, param_key) of searchFields" :key="param_key">
			<span class="main-bordered-input__label" :class="{ 'main-bordered-input__label__active': searchParams[param_key] }">{{
				search_field.label
			}}</span>
			<div class="main-bordered-input" :class="{ 'main-bordered-input__active': isActive === search_field.id }">
				<input
					v-model="searchParams[param_key]"
					@focus="isActive = search_field.id"
					@blur="isActive = null"
					:type="search_field.type"
					:placeholder="search_field.placeholder"
					:id="search_field.id"
					:name="search_field.name" />
			</div>
			<div class="form-error-block">
				<div v-if="isActive === null && v$.searchParams[param_key].$invalid">
					<p class="main-error-message form-error-msg" v-for="(error, index) of v$.searchParams[param_key].$errors" :key="index">
						{{ error.$message }}
					</p>
				</div>
			</div>
		</div>
		<SvgIcon
			@click="handleForm()"
			:viewBox="arrowIcon.viewBox"
			:path="arrowIcon.svgPath"
			:class="{ 'svg-icon__disable': !isSearchingParamsValid, 'btn-shit-right-transform': isSearchingParamsValid }" />
		<SvgIcon
			@click="resetToDefaultPriceList()"
			:viewBox="reloadIcon.viewBox"
			:path="reloadIcon.svgPath"
			:class="{ 'svg-icon__disable': !productPriceListBySearchParams, 'btn-rotate-right-transform': productPriceListBySearchParams }" />
	</form>
</template>

<script>
import { mapGetters, mapActions } from 'vuex'
import { setup, dateValidator, isFormValid, isAnyFormFieldValid } from '@/validators/validators'
import { dateFromField, dateToField } from '@/services/inputFields'
import { priceListSearchParams, requestPriceListBySearchParamsBody } from '@/services/requestBody.js'
import { dd_mm_yyyy, yyyy_mm_dd, date2OffsetDateTime, deepClone } from '@/services/helper'
import SvgIcon from '@/components/UI/SvgIcon.vue'
import { arrowIcon, reloadIcon } from '@/services/svgIcons'

export default {
	setup,

	props: {
		code: {
			type: Number,
			required: true
		},
		interval: {
			type: Object,
			required: true
		}
	},

	components: {
		SvgIcon
	},

	data() {
		return {
			isActive: null,
			searchParams: null,
			isSearchingParamsChanged: false,
			searchFields: { dateFrom: dateFromField, dateTo: dateToField },
			arrowIcon,
			reloadIcon
		}
	},

	methods: {
		dd_mm_yyyy,
		yyyy_mm_dd,
		date2OffsetDateTime,

		initSearchParams() {
			let initSearchParams = priceListSearchParams()
			if (this.interval.from) {
				initSearchParams.dateFrom = this.dd_mm_yyyy(this.interval.from)
			}
			if (this.interval.to) {
				initSearchParams.dateTo = this.dd_mm_yyyy(this.interval.to)
			}
			this.searchParams = initSearchParams
			this.v$.$reset()
		},
		handleForm() {
			if (!this.isRequesting && this.isSearchingParamsValid) {
				let params = deepClone(this.searchParams)
				params.dateFrom = params.dateFrom ? this.date2OffsetDateTime(params.dateFrom, 'from') : null
				params.dateTo = params.dateTo ? this.date2OffsetDateTime(params.dateTo, 'to') : null
				this.requestProductPriceListBySearchParams(requestPriceListBySearchParamsBody(this.code, params))
				this.isSearchingParamsChanged = false
			}
		},
		resetToDefaultPriceList() {
			this.resetPriceListBySearchParams()
			this.initSearchParams()
			setTimeout(() => (this.isSearchingParamsChanged = false), 100)
		},
		...mapActions('user', ['requestProductPriceListBySearchParams', 'resetPriceListBySearchParams'])
	},

	computed: {
		isFormValid,
		isAnyFormFieldValid,

		isSearchingParamsValid() {
			let isIntervalValid = false
			if (this.isAnyFormFieldValid) {
				if (this.searchParams.dateFrom && this.searchParams.dateTo) {
					const from = this.yyyy_mm_dd(this.searchParams.dateFrom)
					const to = this.yyyy_mm_dd(this.searchParams.dateTo)
					isIntervalValid = from <= to ? true : false
				} else if (!this.searchParams.dateFrom && !this.searchParams.dateTo) {
					isIntervalValid = false
				} else {
					isIntervalValid = true
				}
			}
			return this.isSearchingParamsChanged && this.isAnyFormFieldValid && isIntervalValid
		},

		...mapGetters('request', { isRequesting: 'isRequesting' }),
		...mapGetters('user', { productPriceListBySearchParams: 'getProductPriceListBySearchParams' })
	},

	watch: {
		searchParams: {
			handler() {
				if (!this.isSearchingParamsChanged) {
					this.isSearchingParamsChanged = true
				}
			},
			deep: true
		},
		interval: {
			handler() {
				this.searchParams.dateFrom = this.interval.from ? this.dd_mm_yyyy(this.interval.from) : this.interval.from
				this.searchParams.dateTo = this.interval.from ? this.dd_mm_yyyy(this.interval.to) : this.interval.to
				this.isSearchingParamsChanged = false
			},
			deep: true
		}
	},

	beforeMount() {
		this.initSearchParams()
	},
	mounted() {
		this.isSearchingParamsChanged = false
	},
	validations() {
		return {
			searchParams: {
				dateFrom: {
					...dateValidator
				},
				dateTo: {
					...dateValidator
				}
			}
		}
	}
}
</script>
