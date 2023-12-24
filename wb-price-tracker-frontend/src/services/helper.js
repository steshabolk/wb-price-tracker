export function randomIntFromInterval(min, max) {
	// min and max included
	return Math.floor(Math.random() * (max - min + 1) + min)
}

// OBJECT
export const deepClone = obj => {
	if (obj === null) return null
	let clone = Object.assign({}, obj)
	Object.keys(clone).forEach(key => (clone[key] = typeof obj[key] === 'object' ? deepClone(obj[key]) : obj[key]))
	if (Array.isArray(obj)) {
		clone.length = obj.length
		return Array.from(clone)
	}
	return clone
}

// DATE TIME FORMAT
export function addZero(num) {
	return num < 10 ? '0' + num : num
}

// Date yyyy-mm-dd to String dd.mm.yyyy
export function dd_mm_yyyy(date) {
	const parsed = new Date(Date.parse(date))
	const y = parsed.getFullYear()
	const m = addZero(parsed.getMonth() + 1)
	const d = addZero(parsed.getDate())
	return `${d}.${m}.${y}`
}

// String dd.mm.yyyy to Date yyyy-mm-dd
export function yyyy_mm_dd(date) {
	const parsed = date.split('.')
	return new Date(parsed[2], parsed[1] - 1, parsed[0])
}

// Date yyyy-mm-dd to String dd.mm
export function dd_mm(date) {
	const parsed = new Date(Date.parse(date))
	const m = addZero(parsed.getMonth() + 1)
	const d = addZero(parsed.getDate())
	return `${d}.${m}`
}

// Date yyyy-mm-dd to Date at the beginning of the day
export function date_at_day_beginning(date) {
	const parsed = new Date(Date.parse(date))
	parsed.setHours(0, 0, 0)
	return parsed
}

// Date yyyy-mm-dd to Date at the ending of the day
export function date_at_day_ending(date) {
	const parsed = new Date(Date.parse(date))
	parsed.setHours(23, 59, 59)
	return parsed
}

// Date yyyy-mm-dd to Date at the ending of the day
export function date_at_day_mid(date) {
	const parsed = new Date(Date.parse(date))
	parsed.setHours(12, 0, 0)
	return parsed
}

// String dd.mm.yyyy to OffsetDateTime yyyy-MM-dd HH:mm:ss depending on key to/from
export function date2OffsetDateTime(date, key) {
	const date_arr = date.split('.')
	const time_arr = key === 'from' ? ['00', '00', '00'] : ['23', '59', '59']
	return `${date_arr[2]}-${date_arr[1]}-${date_arr[0]}T${time_arr[0]}:${time_arr[1]}:${time_arr[2]}Z`
}
