<template>
	<div class="grid-tb-row">
		<div v-for="index in GridTable.tableColumnsNum" :key="index" class="grid-tb-cell">
			<slot :name="slotCellName(index)"></slot>
		</div>
	</div>
</template>

<script>
export default {
	inject: ['GridTable'],
	methods: {
		slotCellName(index) {
			return `grid-tb-cell-${index}`
		}
	}
}
</script>
