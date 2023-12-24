import { userIcon, phoneIcon, passwordIcon } from '@/services/svgIcons'

export const usernameField = {
	icon: userIcon,
	input: {
		id: 'username',
		placeholder: 'username',
		type: 'text',
		name: 'username'
	}
}

export const passwordField = {
	icon: passwordIcon,
	input: {
		id: 'password',
		placeholder: 'password',
		type: 'password',
		name: 'password'
	}
}

export const passwordConfirmationField = {
	icon: passwordIcon,
	input: {
		id: 'password-confirm',
		placeholder: 'confirm password',
		type: 'password',
		name: 'password-confirm'
	}
}

export const addProductToAccountField = {
	id: 'add-code',
	placeholder: 'enter code',
	type: 'text',
	name: 'add-code',
	label: 'add code'
}

export const dateFromField = {
	id: 'date-from',
	placeholder: 'dd.mm.yyyy',
	type: 'text',
	name: 'date-from',
	label: 'from'
}

export const dateToField = {
	id: 'date-to',
	placeholder: 'dd.mm.yyyy',
	type: 'text',
	name: 'date-to',
	label: 'to'
}
