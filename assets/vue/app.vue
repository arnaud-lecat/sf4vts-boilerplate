<template>
    <div id="app">
        <p class="scopedStyle">Status: {{ status }}</p>
    </div>
</template>

<script>
export default {
    name: 'app',
    data () {
        return {
            status: 'Ok'
        }
    }
};
</script>

<style lang="scss" scoped>
    $scopedStyle: red;

    .scopedStyle {
        color : $scopedStyle;
    }
</style>

