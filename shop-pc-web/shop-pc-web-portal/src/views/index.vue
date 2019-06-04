<template>
    <div>
        <hmtop/>
        <b class="line"></b>
        <shop-nav/>
        <shop-main/>
        <nav-cir/>
        <tip/>
    </div>
</template>

<script>
    import Hmtop from "../components/include/hmtop";
    import ShopNav from "../components/shopNav/shopNav";
    import ShopMain from "../components/shopMainbg/shopMain";
    import NavCir from "../components/navCir/navCir";
    import Tip from "../components/tip/tip";
    export default {
        name: "index",
        components: {Tip, NavCir, ShopMain, ShopNav, Hmtop}
    }
</script>

<style scoped>
    @import "../../src/assets/css/admin.css";
    @import "../../src/assets/css/amazeui.css";
    @import "../../src/assets/css/demo.css";
    @import "../../src/assets/css/hmstyle.css";
</style>
