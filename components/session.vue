<template>
    <h2>Session</h2>
    <pre>{{  query  }}</pre>
</template>

<script setup lang="ts">
const route = useRoute()

const { query } = toRefs(route)
watch(query, () => {
    console.log(route.query, 'session component watch!!!')
}, { immediate: true })
</script>