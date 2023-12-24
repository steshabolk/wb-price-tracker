<template>
	<div
		class="grid-tb"
		:class="{ 'grid-tb__color-even': colorRows === 'even', 'grid-tb__color-odd': colorRows === 'odd' }"
		:style="gridColumnsNumVar(tableColumns.length)">
		<!-- TABLE HEADERS -->
		<div class="grid-tb-cell grid-tb-title" v-for="(header, index) of tableColumns" :key="index">{{ header }}</div>
		<!-- TABLE ROWS -->
		<slot></slot>
	</div>
</template>

<script>
import gridColumnsNumVar from '@/mixins/gridColumnsNumVar'

export default {
	props: {
		tableColumns: {
			type: Array,
			required: true
		},
		colorRows: {
			type: String,
			required: false
		}
	},
	data() {
		return {
			GridTable: {
				tableColumnsNum: 0
			}
		}
	},
	methods: {
		setTableColumnsNum() {
			this.GridTable.tableColumnsNum = this.tableColumns.length
		}
	},
	mixins: [gridColumnsNumVar],
	provide() {
		return { GridTable: this.GridTable }
	},
	mounted() {
		this.setTableColumnsNum()
	}
}
</script>
