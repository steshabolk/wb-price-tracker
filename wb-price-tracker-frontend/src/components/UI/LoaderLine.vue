<template>
	<div v-if="isRequesting" class="loader-line"></div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
	computed: {
		...mapGetters('request', { isRequesting: 'isRequesting' })
	}
}
</script>
