import { createRouter, createWebHistory, createWebHashHistory } from 'vue-router'
import store from '@/store'
import { decodeToken } from '@/services/userService'
import VueJwtDecode from 'vue-jwt-decode'

const routerHistory = createWebHashHistory()

import HomePage from '@/pages/home'

const router = createRouter({
	history: routerHistory,
	routes: [
		{
			path: '/',
			name: 'home',
			component: HomePage
		},
		{
			path: '/:CatchAll(.*)',
			name: '404',
			redirect: '/'
		}
	],
	scrollBehavior(to) {
		if (to.hash) {
			return { el: to.hash, behavior: 'smooth' }
		} else {
			return { top: 0 }
		}
	}
})

router.beforeEach((to, from, next) => {
	if (localStorage.getItem('token')) {
		const token = localStorage.getItem('token')
		const exp = VueJwtDecode.decode(token).exp
		if (exp < Math.floor(Date.now() / 1000)) {
			store.dispatch('auth/logout')
		} else {
			const user = decodeToken(token)
			if (!store.getters['user/isLogged']) {
				store.dispatch('user/setUser', user)
			}
		}
		next()
	} else {
		next()
	}
})

export default router
