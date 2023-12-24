<template>
	<transition-group name="fade-slot" mode="out-in">
		<div class="popup-background" v-if="showCondition">
			<div class="popup-wrapper" :style="setPopupTop">
				<div class="popup-container">
					<SvgIcon @click="closePopup" class="close-btn" :viewBox="plusIcon.viewBox" :path="plusIcon.svgPath" />
					<slot></slot>
				</div>
			</div>
		</div>
	</transition-group>
</template>

<script>
import SvgIcon from '@/components/UI/SvgIcon.vue'
import { plusIcon } from '@/services/svgIcons'

export default {
	props: {
		showCondition: {
			required: true
		},
		closePopup: {
			type: Function,
			required: true
		}
	},
	components: {
		SvgIcon
	},
	data() {
		return {
			plusIcon,
			popupTop: 0
		}
	},
	methods: {
		onScroll() {
			this.popupTop = window.top.scrollY
		}
	},
	computed: {
		setPopupTop() {
			return { '--popupTop': `${this.popupTop}px` }
		}
	},
	mounted() {
		window.addEventListener('scroll', this.onScroll)
	},
	beforeUnmount() {
		window.removeEventListener('scroll', this.onScroll)
	}
}
</script>
