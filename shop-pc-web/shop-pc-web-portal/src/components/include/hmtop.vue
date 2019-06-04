<template>
    <div class="hmtop">
        <am-container_header/>
        <nav_white/>
        <div class="clear"></div>
    </div>
</template>

<script>
    import AmContainer_header from "./hmtop/am-container_header";
    import Nav_white from "./hmtop/nav_white";
    export default {
        name: "hmtop",
        components: {Nav_white, AmContainer_header}
    }
</script>

<style scoped>

</style>
