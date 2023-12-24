import { createStore } from 'vuex'

import request from '@/store/request'
import auth from '@/store/auth'
import user from '@/store/user'

const store = {
	modules: {
		request,
		auth,
		user
	}
}

export default createStore(store)
