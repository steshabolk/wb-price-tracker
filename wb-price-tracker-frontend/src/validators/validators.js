import { helpers, required, minLength, maxLength } from '@vuelidate/validators'
import useVuelidate from '@vuelidate/core'

export function setup() {
	return {
		v$: useVuelidate({
			$lazy: true,
			$autoDirty: true
		})
	}
}

export function isFormValid() {
	return this.v$.$dirty && !this.v$.$invalid
}
export function isAnyFormFieldValid() {
	return this.v$.$anyDirty && !this.v$.$invalid
}

export const usernameValidator = {
	required: helpers.withMessage('enter your username', required),
	minLength: helpers.withMessage('should be at least 2 characters long', minLength(2)),
	maxLength: helpers.withMessage('should be a maximum of 64 characters', maxLength(64)),
	namePattern: helpers.withMessage(
		() => 'must contain only letters, digits and special symbols "-_"',
		value => /^[a-zA-Z\d_-]*$/.test(value)
	)
}

export const passwordValidator = {
	required: helpers.withMessage('enter your password', required),
	minLength: helpers.withMessage('should be at least 6 characters long', minLength(6)),
	maxLength: helpers.withMessage('should be a maximum of 30 characters', maxLength(30)),
	containUppercase: helpers.withMessage(
		() => 'must contain any uppercase character (A-Z)',
		value => /[A-Z]/.test(value)
	),
	containLowercase: helpers.withMessage(
		() => 'must contain any lowercase character (a-z)',
		value => /[a-z]/.test(value)
	),
	containDigit: helpers.withMessage(
		() => 'must contain any digit character (0-9)',
		value => /[0-9]/.test(value)
	)
}

export const passwordConfirmationValidator = {
	required: helpers.withMessage('confirm the entered password', required),
	sameAsPassword: helpers.withMessage(
		() => 'password are not matching',
		value => value === this.user.password
	)
}

export const codeValidator = {
	codePattern: helpers.withMessage(
		() => 'code must contain only digits',
		value => /^(\d+)?$/.test(value)
	),
	minValue: helpers.withMessage(
		() => 'invalid code',
		value => Number(value) >= 2_000_000
	)
}

export const dateValidator = {
	dateTimePattern: helpers.withMessage(
		() => 'date format: dd.mm.yyyy',
		value =>
			/^((((0[1-9]|[12]\d|3[01])\.(0[13578]|1[02])\.((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\.(0[13456789]|1[012])\.((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\.02\.((19|[2-9]\d)\d{2}))|(29\.02\.((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([1][26]|[2468][048]|[3579][26])00)))))?$/.test(
				value
			)
	)
}
