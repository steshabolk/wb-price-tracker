<template>
	<div class="main-form-wrapper auth-form-wrapper">
		<form @submit.prevent="handleForm" autocomplete="off">
			<div
				v-for="(field, index) of fields"
				:key="index"
				class="main-input-wrapper auth-input-wrapper"
				:class="{ 'input-field-error': v$.user[Object.keys(user)[index]].$invalid }">
				<div class="main-input-text" :class="{ 'main-input-text__active': isActive === index }">
					<SvgIcon :viewBox="field.icon.viewBox" :path="field.icon.svgPath" />
					<input
						v-model="user[Object.keys(user)[index]]"
						@focus="isActive = index"
						@blur="isActive = null"
						:type="field.input.type"
						:placeholder="field.input.placeholder"
						:id="field.input.id"
						:name="field.input.name" />
				</div>
				<div class="form-error-block" style="height: 2rem">
					<p class="main-error-message form-error-msg" v-for="(error, index) of v$.user[Object.keys(user)[index]].$errors" :key="index">
						{{ error.$message }}
					</p>
				</div>
			</div>
			<LoaderLine />
			<div v-if="form.btnText" class="main-input-wrapper auth-input-wrapper">
				<button type="submit" class="main-btn btn-disable" :class="{ 'btn-active': isFormValid }">{{ form.btnText }}</button>
			</div>
		</form>
		<div v-if="errMsg" class="request-fail" style="margin-top: 1rem">
			<p class="main-error-message" style="margin-top: 0" v-for="(msg, index) of splitFieldsErrMsg" :key="index">
				{{ msg }}
			</p>
		</div>
	</div>
</template>

<script>
import { loginUserBody, registerUserBody } from '@/services/requestBody'
import { setup, isFormValid, usernameValidator, passwordValidator } from '@/validators/validators'
import { helpers, required } from '@vuelidate/validators'
import LoaderLine from '@/components/UI/LoaderLine.vue'
import SvgIcon from '@/components/UI/SvgIcon.vue'
import { mapActions, mapGetters } from 'vuex'

export default {
	setup,
	props: {
		form: {
			type: Object,
			required: true
		},
		fields: {
			type: Array,
			required: true
		}
	},
	components: {
		SvgIcon,
		LoaderLine
	},
	data() {
		return {
			user: null,
			isActive: null
		}
	},
	methods: {
		initUser() {
			if (this.form.key === 'logIn') {
				this.user = { username: '', password: '' }
			}
			if (this.form.key === 'signUp') {
				this.user = { username: '', password: '', passwordConfirmation: '' }
			}
			this.v$.$reset()
		},
		handleForm() {
			if (!this.isRequesting) {
				if (this.form.key === 'logIn') {
					this.handleLogin()
				}
				if (this.form.key === 'signUp') {
					this.handleRegister()
				}
			}
		},
		handleLogin() {
			if (this.isFormValid) {
				this.login(loginUserBody(this.user.username, this.user.password))
				this.resetForm()
			}
		},
		handleRegister() {
			if (this.isFormValid) {
				this.register(registerUserBody(this.user.username, this.user.password))
				this.resetForm()
			}
		},
		resetForm() {
			if (this.v$.user.password) {
				this.user.password = ''
				this.v$.user.password.$reset()
			}
			if (this.v$.user.passwordConfirmation) {
				this.user.passwordConfirmation = ''
				this.v$.user.passwordConfirmation.$reset()
			}
		},
		...mapActions('auth', ['login', 'register']),
		...mapActions('request', ['clearErrMsg'])
	},

	computed: {
		isFormValid,

		splitFieldsErrMsg() {
			let arr = this.errMsg.split(';')
			arr.forEach((e, i) => {
				arr[i] = e.trim()
			})
			arr = arr.filter(el => el !== '')

			arr.forEach((e, i) => {
				if (e.includes('-')) {
					arr[i] = e.split('-')[1].trim()
				}
			})
			return arr
		},

		...mapGetters('request', { isRequesting: 'isRequesting', errMsg: 'getErrMsg' })
	},

	validations() {
		if (this.form.key === 'logIn') {
			return {
				user: {
					username: {
						...usernameValidator
					},
					password: {
						...passwordValidator
					}
				}
			}
		}
		if (this.form.key === 'signUp') {
			return {
				user: {
					username: {
						...usernameValidator
					},
					password: {
						...passwordValidator
					},
					passwordConfirmation: {
						required: helpers.withMessage('Confirm the entered password', required),
						sameAsPassword: helpers.withMessage(
							() => 'Password are not matching',
							value => value === this.user.password
						)
					}
				}
			}
		}
	},
	beforeMount() {
		this.clearErrMsg()
		this.initUser()
	}
}
</script>
