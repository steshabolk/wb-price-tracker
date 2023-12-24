export const links = [
	{
		title: 'Home',
		alias: 'home',
		url: '/'
	}
]

export const api = {
	api: process.env.VUE_APP_API,
	userController: '/api/v1/users'
}

export const requests = {
	register: api.api + '/register',
	login: api.api + '/login',
	//
	products: api.api + api.userController + '/products'
}
