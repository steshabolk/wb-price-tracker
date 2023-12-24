export default {
	namespaced: true,
	state: {
		isRequesting: false,
		errMsg: ''
	},
	actions: {
		async setIsRequesting({ commit }, payload) {
			commit('setIsRequesting', payload)
		},
		async setErrMsg({ commit, state }, payload) {
			if (state.errMsg !== payload) {
				commit('setErrMsg', payload)
			}
		},
		async clearErrMsg({ commit, state }) {
			if (state.errMsg) {
				commit('setErrMsg', '')
			}
		},
		async aipRequest({ commit, state }) {
			if (state.errMsg) {
				commit('setErrMsg', '')
			}
			commit('setIsRequesting', true)
		}
	},
	getters: {
		isRequesting(state) {
			return state.isRequesting
		},
		getErrMsg(state) {
			return state.errMsg
		}
	},
	mutations: {
		setIsRequesting(state, payload) {
			state.isRequesting = payload
		},
		setErrMsg(state, payload) {
			state.errMsg = payload
		}
	}
}
