<template>
	<div class="wrapper-content">
		<div class="container">
			<div v-if="!isAnyAccountLogged" class="grid grid-no-gap">
				<div class="grid-column home__left main-background">
					<div class="grid-cell auth-wrapper auth-wrapper__light">
						<div class="inline-btn-wrapper" style="margin-bottom: 2rem">
							<button class="btn-list inline-btn-left" :class="{ 'btn-list-active': logIn.isActive }" @click="changeForm(logIn.key)">log in</button>
							<button class="btn-list inline-btn-right" :class="{ 'btn-list-active': signUp.isActive }" @click="changeForm(signUp.key)">
								sign up
							</button>
						</div>
						<transition-group name="fade-slot" mode="out-in">
							<AuthForm
								v-if="logIn.isActive"
								:form="{
									key: logIn.key,
									btnText: logIn.btnText
								}"
								:fields="logIn.fields" />
							<AuthForm
								v-if="signUp.isActive"
								:form="{
									key: signUp.key,
									btnText: signUp.btnText
								}"
								:fields="signUp.fields" />
						</transition-group>
					</div>
				</div>
				<div class="grid-column home__right">
					<CanvasJSChart @chart-ref="chartInstance" :options="chart.options" :style="chart.styleOptions" />
				</div>
			</div>
			<LoggedAccount v-if="userIsLogged" />
		</div>
	</div>
</template>

<script>
import { mapGetters, mapActions } from 'vuex'
import { usernameField, passwordField, passwordConfirmationField } from '@/services/inputFields'
import { randomIntFromInterval } from '@/services/helper'
import { isAnyAccountLogged } from '@/services/userService'
import AuthForm from '@/components/AuthForm.vue'
import LoggedAccount from '@/components/LoggedAccount.vue'
import CanvasJSChart, { CanvasJS } from '@/components/UI/CanvasJSVueComponent.vue'
import LoaderCard from '@/components/UI/LoaderCard.vue'

CanvasJS.addColorSet('mainColorSet', ['#BA68C8', '#4DB6AC', '#64B5F6'])

export default {
	components: { AuthForm, LoggedAccount, CanvasJSChart, LoaderCard },
	data() {
		return {
			logIn: {
				key: 'logIn',
				isActive: true,
				btnText: 'log in',
				fields: [usernameField, passwordField]
			},
			signUp: {
				key: 'signUp',
				isActive: false,
				btnText: 'create account',
				fields: [usernameField, passwordField, passwordConfirmationField]
			},

			chart: {
				options: {
					animationEnabled: true,
					animationDuration: 1500,
					theme: 'light2',
					backgroundColor: '#fafafa',
					colorSet: 'mainColorSet',
					creditText: '',
					creditHref: '',
					title: {
						text: ''
					},
					axisX: {
						margin: 15,
						labelFontColor: '#373737',
						lineColor: '#dddddd',
						tickColor: '#dddddd',
						gridColor: '#dddddd',
						labelFormatter: function () {
							return ''
						}
						// interval: 1
					},
					axisY: {
						margin: 15,
						valueFormatString: '### ### ##0₽',
						lineThickness: 1,
						// labelFontSize: 14,
						labelFontColor: '#373737',
						lineColor: '#dddddd',
						tickColor: '#dddddd',
						gridColor: '#dddddd'
					},
					toolTip: {
						contentFormatter: function (e) {
							return CanvasJS.formatNumber(Math.abs(e.entries[0].dataPoint.y), '### ### ##0₽')
						}
					},
					data: [
						{
							type: 'spline',
							name: 'line_1',
							lineThickness: 4,
							yValueFormatString: '### ### ##0₽',
							markerSize: 12,
							lineDashType: 'dash',
							dataPoints: []
						},
						{
							type: 'spline',
							name: 'line_2',
							lineThickness: 4,
							yValueFormatString: '### ### ##0₽',
							markerSize: 12,
							lineDashType: 'dash',
							dataPoints: []
						},
						{
							type: 'spline',
							name: 'line_3',
							lineThickness: 4,
							yValueFormatString: '### ### ##0₽',
							markerSize: 12,
							lineDashType: 'dash',
							dataPoints: []
						}
					]
				},
				styleOptions: {
					width: '100%',
					height: '15rem'
				}
			},

			xVal: 0,
			priceArr: [10600, 5500, 2700],
			interval_1: null,
			interval_2: null
		}
	},
	methods: {
		randomIntFromInterval,
		...mapActions('auth', ['setIsRegisterSuccess']),

		changeForm(form) {
			if (!this.isRequesting) {
				if (form === 'logIn' && !this.logIn.isActive) {
					this.logIn.isActive = true
					this.signUp.isActive = false
				}
				if (form === 'signUp' && !this.signUp.isActive) {
					this.logIn.isActive = false
					this.signUp.isActive = true
				}
			}
		},

		chartInstance(chart) {
			this.chart = chart
		},
		initChart() {
			const initPoints = [[...this.priceArr], [11323, 5889, 2563], [10789, 5632, 2896]]
			for (let i = 0; i < initPoints.length; i++) {
				for (let j = 0; j < initPoints[i].length; j++) {
					this.chart.options.data[j].dataPoints.push({ x: this.xVal, y: initPoints[i][j] })
				}
				this.xVal++
			}
		},
		clearChart() {
			for (let i = 0; i < this.chart.options.data.length; i++) {
				this.chart.options.data[i].dataPoints = []
			}
			this.xVal = 0
		},
		updateChart() {
			for (let i = 0; i < this.chart.options.data.length; i++) {
				this.chart.options.data[i].dataPoints.push(this.generateRandomPoints(this.priceArr[i]))
				if (this.chart.options.data[i].dataPoints.length >= 20) {
					this.chart.options.data[i].dataPoints.shift()
				}
			}
			this.xVal++
			this.chart.render()
		},
		generateRandomPoints(mainValue) {
			const sign = Math.round(Math.random() * 10) % 2 === 0 ? 1 : -1
			const percent = this.randomIntFromInterval(10, 35)
			const y = mainValue + sign * Math.round((mainValue * percent) / 100)
			return { x: this.xVal, y: y }
		},
		updatePriceArr() {
			for (let i = 0; i < this.priceArr.length; i++) {
				const sign = Math.round(Math.random() * 10) % 2 === 0 ? 1 : -1
				const percent = this.randomIntFromInterval(5, 20)
				const price = this.priceArr[i]
				this.priceArr[i] = price + sign * Math.round((price * percent) / 100)
			}
		},

		displayHomePage() {
			this.initChart()
			this.interval_1 = setInterval(() => this.updateChart(), 1700)
			this.interval_2 = setInterval(() => this.updatePriceArr(), 10000)
		},
		closeHomePage() {
			clearInterval(this.interval_1)
			clearInterval(this.interval_2)
			this.clearChart()
		}
	},
	computed: {
		isAnyAccountLogged,
		...mapGetters('auth', { isRegisterSuccess: 'isRegisterSuccess' }),
		...mapGetters('user', { userIsLogged: 'isLogged' }),
		...mapGetters('request', { isRequesting: 'isRequesting' })
	},
	watch: {
		isRegisterSuccess(newValue) {
			if (newValue === true) {
				setTimeout(() => this.changeForm('logIn'), 500)
				setTimeout(() => this.setIsRegisterSuccess(false), 500)
			}
		},
		isAnyAccountLogged(newValue, oldValue) {
			if (newValue === true) {
				this.closeHomePage()
			}
			if (newValue === false) {
				this.displayHomePage()
			}
		}
	},
	beforeMount() {
		if (!this.isAnyAccountLogged) {
			this.displayHomePage()
		}
	},
	beforeUnmount() {
		if (!this.isAnyAccountLogged) {
			this.closeHomePage()
		}
	}
}
</script>
