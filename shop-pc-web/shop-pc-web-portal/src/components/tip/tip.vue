<template>
    <div class="tip">
        <sidebar/>
        <prof-content/>
        <shop-cart-content/>
        <asset-content/>
        <foot-content/>
        <brand-content/>
        <broadcast-content/>
    </div>
</template>

<script>
    import Sidebar from "./tip/sidebar";
    import ProfContent from "./tip/prof-content";
    import ShopCartContent from "./tip/shopCart-content";
    import AssetContent from "./tip/asset-content";
    import FootContent from "./tip/foot-content";
    import BrandContent from "./tip/brand-content";
    import BroadcastContent from "./tip/broadcast-content";
    export default {
        name: "tip",
        components: {BroadcastContent, BrandContent, FootContent, AssetContent, ShopCartContent, ProfContent, Sidebar}
    }
</script>

<style scoped>

</style>
