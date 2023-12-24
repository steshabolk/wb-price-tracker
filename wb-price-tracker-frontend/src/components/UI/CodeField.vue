<template>
	<form @submit.prevent="handleForm" autocomplete="off" class="code-bordered-input">
		<span class="main-bordered-input__label" :class="{ 'main-bordered-input__label__active': code }">{{ addProductToAccountField.label }}</span>
		<div class="main-bordered-input" :class="{ 'main-bordered-input__active': isActive === addProductToAccountField.id }">
			<input
				v-model="code"
				@focus="isActive = addProductToAccountField.id"
				@blur="isActive = null"
				:type="addProductToAccountField.type"
				:placeholder="addProductToAccountField.placeholder"
				:id="addProductToAccountField.id"
				:name="addProductToAccountField.name" />
			<SvgIcon @click="handleForm()" :viewBox="plusIcon.viewBox" :path="plusIcon.svgPath" :class="{ 'svg-icon__disable': !activeBtnCond }" />
		</div>
	</form>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
import { addProductToAccountBody } from '@/services/requestBody'
import { addProductToAccountField } from '@/services/inputFields'
import { plusIcon } from '@/services/svgIcons'
import { setup, isFormValid, codeValidator } from '@/validators/validators'
import SvgIcon from '@/components/UI/SvgIcon.vue'

export default {
	setup,
	components: { SvgIcon },
	data() {
		return {
			code: '',
			isActive: null,
			addProductToAccountField,
			plusIcon
		}
	},
	computed: {
		isFormValid,
		activeBtnCond() {
			return !this.isRequesting && this.isFormValid
		},
		...mapGetters('request', { isRequesting: 'isRequesting' })
	},
	methods: {
		handleForm() {
			if (this.activeBtnCond) {
				this.addProductToAccount(addProductToAccountBody(this.code))
				this.resetForm()
			}
		},
		resetForm() {
			if (this.v$.code) {
				this.code = ''
				this.v$.code.$reset()
			}
		},
		...mapActions('user', ['addProductToAccount'])
	},
	validations() {
		return {
			code: {
				...codeValidator
			}
		}
	},
	mounted() {}
}
</script>
