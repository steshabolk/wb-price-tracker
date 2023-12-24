// REQUEST BODY
export function loginUserBody(username, password) {
	return { username: username, password: password }
}

export function registerUserBody(username, password) {
	return { username: username, password: password }
}

export function addProductToAccountBody(code) {
	return { code: code }
}

export function deleteProductFromAccountBody(code) {
	return { code: code }
}

export function priceListSearchParams(dateFrom = null, dateTo = null, limit = null) {
	return {
		dateFrom: dateFrom,
		dateTo: dateTo,
		limit: limit
	}
}

export function requestPriceListBySearchParamsBody(code, searchParams) {
	return { code: code, searchParams: searchParams }
}

// REQUEST PARAMS
function formRequestParams(initial, result = {}) {
	const loopNestedObj = (obj, key_seq) => {
		Object.entries(obj).forEach(([key, val]) => {
			const _key_seq = key_seq ? key_seq + '_' + key : key
			if (val && typeof val === 'object' && !Array.isArray(val)) {
				loopNestedObj(val, _key_seq)
			} else {
				if (Array.isArray(val)) {
					result[_key_seq] = val.length === 0 ? null : val.join(',')
				} else result[_key_seq] = val ? val : null
			}
		})
	}
	loopNestedObj(initial, '')
	return result
}

export function getRequestParams(searchParams) {
	return formRequestParams(searchParams)
}
