<template>
	<div v-if="errMsg" class="request-fail">
		<p class="main-error-message error-message_closeable">
			<span>{{ errMsg }}</span>
			<SvgIcon @click="clearErrMsg" class="close-btn" :viewBox="plusIcon.viewBox" :path="plusIcon.svgPath" />
		</p>
	</div>
</template>

<script>
import { mapGetters, mapActions } from 'vuex'
import { plusIcon } from '@/services/svgIcons.js'
import SvgIcon from '@/components/UI/SvgIcon.vue'

export default {
	components: {
		SvgIcon
	},
	data() {
		return {
			plusIcon
		}
	},
	methods: {
		...mapActions('request', ['clearErrMsg'])
	},
	computed: {
		...mapGetters('request', { errMsg: 'getErrMsg' })
	},
	mounted() {
		// this.clearErrMsg()
	}
}
</script>
