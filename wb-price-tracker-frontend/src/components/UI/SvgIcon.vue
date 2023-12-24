<template>
	<svg class="svg-icon" role="presentation" aria-hidden="true" :viewBox="viewBox">
		<path :d="path" />
	</svg>
</template>

<script>
export default {
	props: {
		viewBox: {
			type: String,
			required: true
		},
		path: {
			type: String,
			required: true
		}
	}
}
</script>
