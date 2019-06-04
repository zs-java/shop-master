<template>
    <div class="listMain">
        <nav-table/>
        <am-breadcrumb-slash/>
        <scoll/>
        <item-inform/>
        <match/>
        <div class="clear"></div>
        <introduce/>
    </div>
</template>

<script>
    import NavTable from "../search/search/nav-table";
    import AmBreadcrumbSlash from "./listMain/am-breadcrumb-slash";
    import ItemInform from "./listMain/item-inform";
    import Match from "./listMain/match";
    import Introduce from "./listMain/introduce";
    export default {
        name: "listMain",
        components: {Introduce, Match, ItemInform, AmBreadcrumbSlash, NavTable}
    }
</script>

<style scoped>

</style>
