<template>
	<div class="account-info main-background">
		<p class="account-name">{{ user.username }}</p>
		<SvgIcon :viewBox="logoutIcon.viewBox" :path="logoutIcon.svgPath" @click="logout()" />
	</div>

	<transition-group name="fade-slot" mode="out-in">
		<LoaderCard v-if="!isProductsLoaded" style="min-height: 84vh" />
		<div v-else class="account-container">
			<CodeField />
			<ErrorCloseable style="margin-top: 1rem" />

			<ProductsListTable v-if="isProductsLoaded && products.length > 0" />

			<transition-group name="fade-slot" mode="out-in">
				<div v-if="isProductsLoaded && products.length === 0" class="account-empty-list">
					<p>add your first product</p>
					<SvgIcon :viewBox="arrowIcon.viewBox" :path="arrowIcon.svgPath" />
				</div>
			</transition-group>
		</div>
	</transition-group>
</template>

<script>
import { mapGetters, mapActions } from 'vuex'
import { logoutIcon, arrowIcon } from '@/services/svgIcons.js'
import SvgIcon from '@/components/UI/SvgIcon.vue'
import LoaderCard from '@/components/UI/LoaderCard.vue'
import ErrorCloseable from '@/components/UI/ErrorCloseable.vue'
import CodeField from '@/components/UI/CodeField.vue'
import ProductsListTable from '@/components/UI/ProductsListTable.vue'

export default {
	components: {
		SvgIcon,
		LoaderCard,
		ErrorCloseable,
		CodeField,
		ProductsListTable
	},
	data() {
		return {
			logoutIcon,
			arrowIcon
		}
	},
	methods: {
		...mapActions('request', ['clearErrMsg']),
		...mapActions('auth', ['logout']),
		...mapActions('user', ['getUserProducts'])
	},
	computed: {
		...mapGetters('user', { user: 'getUser', isProductsLoaded: 'isProductsLoaded', products: 'getProducts' })
	},
	mounted() {
		this.clearErrMsg()
		this.getUserProducts()
	}
}
</script>
