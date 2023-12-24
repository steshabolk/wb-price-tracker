export const links = [
	{
		title: 'Home',
		alias: 'home',
		url: '/'
	}
]

export const api = {
	api: process.env.VUE_APP_API,
	productController: '/products'
}

export const requests = {
	register: api.api + '/register',
	login: api.api + '/login',
	//
	products: api.api + api.productController
}
