import instance from '@/store/axiosInstance'
import { authHeader } from '@/services/userService'
import { priceListSearchParams, getRequestParams } from '@/services/requestBody'
import { UNKNOWN_ERROR, PRODUCT_ALREADY_EXISTS, WB_INVALID_CODE } from '@/services/errorMessages'
import { requests } from '@/_config'

export default {
	namespaced: true,
	state: {
		user: null,
		products: [],
		isProductsLoaded: false,
		productsDefaultPriceList: [],
		productPriceListBySearchParams: null
	},
	actions: {
		async setUser({ commit }, user) {
			commit('setUser', user)
		},
		async logoutUser({ commit }) {
			commit('logoutUser')
		},
		async getUserProducts({ commit, state }) {
			if (!state.isProductsLoaded) {
				await instance
					.get(requests.products, {
						headers: authHeader()
					})
					.then(response => {
						commit('setProducts', response.data)
					})
					.catch(error => {
						// console.log(error)
					})
			}
		},
		async getDefaultPriceList({ commit, state }, code) {
			if (!state.productsDefaultPriceList.find(obj => obj.code === code)) {
				await instance
					.get(requests.products + '/' + code, {
						headers: authHeader(),
						params: getRequestParams(priceListSearchParams(null, null, 90))
					})
					.then(response => {
						commit('addProductsDefaultPriceList', { code: code, prices: response.data })
					})
					.catch(error => {
						// console.log(error)
					})
			}
		},
		async requestProductPriceListBySearchParams({ commit, state }, { code, searchParams }) {
			await instance
				.get(requests.products + '/' + code, {
					headers: authHeader(),
					params: getRequestParams(searchParams)
				})
				.then(response => {
					commit('addProductPriceListBySearchParams', { code: code, prices: response.data })
				})
				.catch(error => {
					// console.log(error)
				})
		},
		async addProductToAccount({ commit, dispatch }, code) {
			dispatch('request/aipRequest', null, { root: true })
			await instance
				.post(requests.products, code, {
					headers: authHeader()
				})
				.then(response => {
					dispatch('request/setIsRequesting', false, { root: true })
					commit('setProducts', response.data)
				})
				.catch(error => {
					dispatch('request/setIsRequesting', false, { root: true })
					if (
						error.response &&
						error.response.data &&
						error.response.data.code &&
						(error.response.data.code === PRODUCT_ALREADY_EXISTS || error.response.data.code === WB_INVALID_CODE)
					) {
						dispatch('request/setErrMsg', error.response.data.message, { root: true })
					} else {
						dispatch('request/setErrMsg', UNKNOWN_ERROR, { root: true })
					}
				})
		},
		async deleteProductFromAccount({ commit, dispatch }, code) {
			dispatch('request/aipRequest', null, { root: true })
			await instance
				.delete(requests.products, { data: code, headers: authHeader() })
				.then(response => {
					dispatch('request/setIsRequesting', false, { root: true })
					commit('setProducts', response.data)
				})
				.catch(error => {
					dispatch('request/setIsRequesting', false, { root: true })
					dispatch('request/setErrMsg', UNKNOWN_ERROR, { root: true })
				})
		},
		async resetPriceListBySearchParams({ commit, state }) {
			if (state.productPriceListBySearchParams) {
				commit('addProductPriceListBySearchParams', null)
			}
		}
	},
	getters: {
		getUser(state) {
			return state.user
		},
		isLogged(state) {
			return state.user ? true : false
		},
		getProducts(state) {
			return state.products
		},
		isProductsLoaded(state) {
			return state.isProductsLoaded
		},
		getProductsDefaultPriceList(state) {
			return state.productsDefaultPriceList
		},
		getProductPriceListBySearchParams(state) {
			return state.productPriceListBySearchParams
		}
	},
	mutations: {
		setUser(state, payload) {
			state.user = payload
		},
		logoutUser(state, payload) {
			state.user = null
			state.products = []
			state.isProductsLoaded = false
			state.productsDefaultPriceList = []
			state.productPriceListBySearchParams = null
		},
		setProducts(state, payload) {
			state.products = payload
			state.isProductsLoaded = true
		},
		addProductsDefaultPriceList(state, payload) {
			state.productsDefaultPriceList.push(payload)
		},
		addProductPriceListBySearchParams(state, payload) {
			state.productPriceListBySearchParams = payload
		}
	}
}
