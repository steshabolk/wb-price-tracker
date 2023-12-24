<template>
	<transition-group name="fade-slot" mode="out-in">
		<grid-table :tableColumns="tableColumns" :colorRows="'odd'" style="margin-top: 1rem">
			<grid-table-row v-for="(product, index) of products" :key="index">
				<template #grid-tb-cell-1
					><span class="popup-link" @click="showPopup(product.code, product.brand, product.name)">{{ product.code }}</span></template
				>
				<template #grid-tb-cell-2
					><span style="width: 100%; text-align: left">{{ product.brand }}</span></template
				>
				<template #grid-tb-cell-3
					><span style="width: 100%; text-align: left">{{ product.name }}</span></template
				>
				<template #grid-tb-cell-4>{{ product.price }}&#8381;</template>
			</grid-table-row>
		</grid-table>
	</transition-group>

	<popup-window :showCondition="popupWindow.selectedCode" :closePopup="closePopup">
		<transition-group name="fade-slot" mode="out-in">
			<div class="popup-block">
				<span><SvgIcon @click="manageDeleteConfirmation(true)" :viewBox="removeIcon.viewBox" :path="removeIcon.svgPath" /></span>
				<span>{{ popupWindow.selectedCode }}</span>
				<span>{{ popupWindow.codeBrand }}</span>
				<span>{{ popupWindow.codeName }}</span>
			</div>
			<div class="popup-block" v-if="showDeleteConfirmation" style="margin-top: 0.8rem">
				<span>Are you sure you want to delete the product from your account?</span>
				<span><SvgIcon @click="manageDeleteConfirmation(false)" class="close-btn" :viewBox="plusIcon.viewBox" :path="plusIcon.svgPath" /></span>
				<span><SvgIcon @click="removeCode()" class="btn-click-transform" :viewBox="confirmIcon.viewBox" :path="confirmIcon.svgPath" /></span>
			</div>
			<p class="horizontal-line" />
			<PriceListSearchBar :code="popupWindow.selectedCode" :interval="popupWindow.interval" />
			<p class="horizontal-line" />
			<div v-if="popupContentCondition">
				<div class="popup-block">
					<span>min: {{ popupWindow.minPrice }}&#8381;</span>
					<span>max: {{ popupWindow.maxPrice }}&#8381;</span>
				</div>
				<CanvasJSChart @chart-ref="chartInstance" :options="chart.options" :style="chart.styleOptions" />
			</div>
			<div v-else style="min-height: 42vh; display: flex; justify-content: center; align-items: center">
				the price list is not available for the specified time interval
			</div>
		</transition-group>
	</popup-window>
</template>

<script>
import { mapGetters, mapActions } from 'vuex'
import { dd_mm, date_at_day_ending, date_at_day_beginning } from '@/services/helper'
import SvgIcon from '@/components/UI/SvgIcon.vue'
import { removeIcon, plusIcon, confirmIcon } from '@/services/svgIcons'
import { deleteProductFromAccountBody } from '@/services/requestBody'
import PriceListSearchBar from '@/components/UI/PriceListSearchBar.vue'
import GridTable from '@/components/UI/GridTable.vue'
import GridTableRow from '@/components/UI/GridTableRow.vue'
import PopupWindow from '@/components/UI/PopupWindow.vue'
import LoaderCard from '@/components/UI/LoaderCard.vue'
import CanvasJSChart, { CanvasJS } from '@/components/UI/CanvasJSVueComponent.vue'

export default {
	components: {
		GridTable,
		GridTableRow,
		PopupWindow,
		LoaderCard,
		CanvasJSChart,
		SvgIcon,
		PriceListSearchBar
	},

	data() {
		return {
			removeIcon,
			plusIcon,
			confirmIcon,
			tableColumns: ['code', 'brand', 'name', 'last price'],
			showDeleteConfirmation: false,

			popupWindow: {
				selectedCode: null,
				codeBrand: null,
				codeName: null,
				minPrice: null,
				maxPrice: null,
				interval: {
					from: null,
					to: null
				}
			},

			chart: {
				options: {
					animationEnabled: true,
					theme: 'light2',
					backgroundColor: '#fafafa',
					colorSet: 'colorSet2',
					creditText: '',
					creditHref: '',
					title: {
						text: ''
					},
					axisX: {
						margin: 15,
						// labelFontSize: 15,
						labelFontColor: '#373737',
						lineColor: '#dddddd',
						tickColor: '#dddddd',
						gridColor: '#dddddd',
						labelFormatter: function (e) {
							const date = dt => `${dt.getDate()}.${dt.getMonth() + 1}.${dt.getFullYear()}`
							if (date(e.value) === date(e.chart.options.data[0].dataPoints[0].x)) {
								const dd_mm_yyyy = '' + e.chart.options.data[0].dataPoints[0].label.split('-')[0] + '.' + e.value.getFullYear().toString().substr(-2)
								return dd_mm_yyyy
							} else if (date(e.value) === date(e.chart.options.data[0].dataPoints[e.chart.options.data[0].dataPoints.length - 1].x)) {
								return CanvasJS.formatDate(e.value, 'DD.MM.YY')
							} else {
								return ''
							}
						},
						labelMaxWidth: 100,
						labelWrap: true,
						labelAngle: 0,
						labelTextAlign: 'center',
						interval: 1,
						intervalType: 'day',
						valueFormatString: 'DD.MM.YY'
					},
					axisY: {
						margin: 15,
						valueFormatString: '### ### ##0₽',
						lineThickness: 1,
						// labelFontSize: 15,
						labelFontColor: '#373737',
						lineColor: '#dddddd',
						tickColor: '#dddddd',
						gridColor: '#dddddd'
					},
					// toolTip: {
					// 	contentFormatter: function (e) {
					// 		return `<span style="font-size: 0.7rem"><span style="color:#a233a1">${e.entries[0].dataPoint.label}: </span>${e.entries[0].dataPoint.y} ₽</span>`
					// 	}
					// },
					data: [
						{
							type: 'splineArea',
							name: 'PriceList',
							yValueFormatString: '### ### ##0₽',
							markerSize: 0,
							color: '#a233a1',
							lineDashType: 'dash',
							lineThickness: 3,
							dataPoints: []
						}
					]
				},
				styleOptions: {
					width: '100%',
					height: '15rem'
				}
			}
		}
	},

	methods: {
		dd_mm,
		date_at_day_ending,
		date_at_day_beginning,

		showPopup(code, brand, name) {
			this.popupWindow.selectedCode = code
			this.popupWindow.codeBrand = brand
			this.popupWindow.codeName = name
			this.getDefaultPriceList(this.popupWindow.selectedCode)
		},

		closePopup() {
			this.showDeleteConfirmation = false
			this.popupWindow.selectedCode = null
			this.popupWindow.codeBrand = null
			this.popupWindow.codeName = null
			this.popupWindow.minPrice = null
			this.popupWindow.maxPrice = null
			this.popupWindow.interval = {
				from: null,
				to: null
			}
			this.setChartDataPoints([])
			this.resetPriceListBySearchParams()
		},

		formChartDataPoints(priceList) {
			let resultArr = []

			let minPrice = null
			let maxPrice = null
			let currPrice = null

			let dateInterval_start = null
			let dateInterval_end = null

			const setMinMaxPrice = () => {
				minPrice = minPrice <= currPrice ? minPrice : currPrice
				maxPrice = maxPrice >= currPrice ? maxPrice : currPrice
			}
			const formChartPoint = (start, end, price, beginning = false) => {
				const date = start === end ? this.dd_mm(start) : `${this.dd_mm(start)}-${this.dd_mm(end)}`
				if (beginning) {
					return { x: this.date_at_day_beginning(start), y: price, label: date }
				} else {
					return { x: this.date_at_day_beginning(end), y: price, label: date }
				}
			}

			for (let index = priceList.length - 1; index >= 0; index--) {
				const point = priceList[index]
				const point_date = point.updatedAt
				const point_price = point.price

				if (index === priceList.length - 1) {
					minPrice = point_price
					maxPrice = point_price
					currPrice = point_price
					dateInterval_start = point_date
					this.popupWindow.interval.from = point_date
				}

				if (point_price === currPrice) {
					dateInterval_end = point_date
				}

				if (point_price !== currPrice) {
					resultArr.push(formChartPoint(dateInterval_start, dateInterval_end, currPrice, dateInterval_start === this.popupWindow.interval.from))
					setMinMaxPrice()
					currPrice = point_price
					dateInterval_start = point_date
					dateInterval_end = point_date
				}

				if (index === 0) {
					resultArr.push(formChartPoint(dateInterval_start, dateInterval_end, currPrice, dateInterval_start === this.popupWindow.interval.from))
					setMinMaxPrice()
					this.popupWindow.interval.to = point_date
				}
			}

			// if there is one point, add another one to show the graph
			if (resultArr.length === 1) {
				const label_date_arr = resultArr[0].label.split('-')

				if (label_date_arr.length === 1) {
					// if point date is one day, divide into beginning / ending of the day
					const date = resultArr[0].x
					const date_beginning = this.date_at_day_beginning(date)
					const date_ending = this.date_at_day_ending(date)
					const point_from = { x: date_beginning, y: resultArr[0].y, label: resultArr[0].label }
					const point_to = { x: date_ending, y: resultArr[0].y, label: resultArr[0].label }
					resultArr = [point_from, point_to]
					this.setChartDataPoints(resultArr)
				} else {
					// if point date is interval, divide into two points
					const from_arr_dd_mm = label_date_arr[0].split('.')
					const to_arr_dd_mm = label_date_arr[1].split('.')
					const date_year = resultArr[0].x.getFullYear()
					const price = resultArr[0].y
					const from = `${date_year}-${from_arr_dd_mm[1]}-${from_arr_dd_mm[0]}`
					const to = `${date_year}-${to_arr_dd_mm[1]}-${to_arr_dd_mm[0]}`
					const point_from = formChartPoint(from, from, price, true)
					const point_to = formChartPoint(to, to, price, false)
					resultArr = [point_from, point_to]
					this.setChartDataPoints(resultArr)
				}
			} else {
				this.setChartDataPoints(resultArr)
			}

			this.popupWindow.minPrice = minPrice
			this.popupWindow.maxPrice = maxPrice
		},

		setChartDataPoints(value) {
			this.chart.options.data[0].dataPoints = value
		},

		manageDeleteConfirmation(show) {
			this.showDeleteConfirmation = show
		},

		removeCode() {
			this.deleteProductFromAccount(deleteProductFromAccountBody(this.popupWindow.selectedCode))
			this.closePopup()
		},

		...mapActions('user', ['getDefaultPriceList', 'deleteProductFromAccount', 'resetPriceListBySearchParams'])
	},

	computed: {
		getPriceList() {
			const defaultPriceList = this.productsDefaultPriceList.find(obj => obj.code === this.popupWindow.selectedCode)
			const priceListBySearchParams = this.productPriceListBySearchParams

			if (priceListBySearchParams && priceListBySearchParams.code === this.popupWindow.selectedCode) {
				this.formChartDataPoints(priceListBySearchParams.prices)
			} else if (defaultPriceList) {
				this.formChartDataPoints(defaultPriceList.prices)
			}
			return defaultPriceList
		},
		popupContentCondition() {
			return this.getPriceList && this.chart.options.data[0].dataPoints.length > 1
		},

		...mapGetters('user', {
			products: 'getProducts',
			productsDefaultPriceList: 'getProductsDefaultPriceList',
			productPriceListBySearchParams: 'getProductPriceListBySearchParams'
		})
	}
}
</script>
