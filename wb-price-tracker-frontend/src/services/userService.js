import VueJwtDecode from 'vue-jwt-decode'
import store from '@/store'

export function authHeader() {
	if (localStorage.getItem('token')) {
		return { Authorization: 'Bearer ' + localStorage.getItem('token') }
	}
}

export function decodeToken(token) {
	const decoded = VueJwtDecode.decode(token)
	return { id: decoded.sub, username: decoded.username, role: decoded.role.replace('ROLE_', '').toLowerCase() }
}

export function userFromAuthHeader(authHeader) {
	const token = authHeader.replace('Bearer ', '')
	localStorage.setItem('token', token)
	setUserByRole(token)
}

export function setUserByRole(token) {
	const user = decodeToken(token)
	if (user.role === 'user') {
		store.dispatch('user/setUser', user)
	}
}

export function isAnyAccountLogged() {
	return store.getters['user/isLogged']
}
