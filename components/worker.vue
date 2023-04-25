<template>
    <h2>Worker</h2>
    <button @click="clickButton">クエリパラメータが付与される</button>
</template>

<script setup lang="ts">
const route = useRoute()
console.log(route.query)

const clickButton = async () => {
    const a: number = Math.floor(Math.random() * 10) + 1
    await navigateTo({
        path: '/route-query-watch',
        query: {
            'test': 'hoge',
            'number': a
        }
    })
}
</script>