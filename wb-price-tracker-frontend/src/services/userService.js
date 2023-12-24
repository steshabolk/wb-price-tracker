import VueJwtDecode from 'vue-jwt-decode'
import store from '@/store'

export function authHeader() {
	if (localStorage.getItem('token')) {
		return { 'X-Access-Token': localStorage.getItem('token') }
	}
}

export function decodeToken(token) {
	const decoded = VueJwtDecode.decode(token)
	return { id: decoded.sub, username: decoded.username }
}

export function processAccessToken(accessToken) {
	const token = accessToken.accessToken
	localStorage.setItem('token', token)
	setUser(token)
}

export function setUser(token) {
	const user = decodeToken(token)
	store.dispatch('user/setUser', user)
}

export function isAnyAccountLogged() {
	return store.getters['user/isLogged']
}
