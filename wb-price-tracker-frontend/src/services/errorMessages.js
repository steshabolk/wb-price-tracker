export const UNKNOWN_ERROR = 'An error has occurred. Please try again later'
export const AUTHORIZATION_ERROR = 'Authentication failed. Please check the correctness of the login details'

export const VALIDATION_ERROR = 'VALIDATION_ERROR'
export const PRODUCT_ALREADY_ADDED = 'PRODUCT_ALREADY_ADDED'

export const CHECK_INVALID_CODE_RESPONSE = errCode => {
	return errCode === 'WB_ERROR_BRAND' || errCode === 'WB_ERROR_NAME' || errCode === 'WB_ERROR_PRICE'
}

export const INVALID_CODE = code => {
	return `${code} is invalid code`
}
