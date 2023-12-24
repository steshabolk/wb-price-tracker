import axios from 'axios'
import store from '@/store'

const instance = axios.create({
	headers: {
		Accept: 'application/json',
		'Content-Type': 'application/json; charset=UTF-8'
	},
	timeout: 30000
})

instance.interceptors.request.use(
	config => {
		// console.log(config)
		return config
	},
	error => {
		return Promise.reject(error)
	}
)

instance.interceptors.response.use(
	response => {
		// console.log(response)
		return response
	},
	error => {
		// console.log(error.response)
		if (error.response && error.response.status && error.response.status === 401 && !error.config._retry) {
			error.config._retry = true
			store.dispatch('auth/logout')
			return Promise.reject(error)
		}
		return Promise.reject(error)
	}
)

export default instance
