<template>
    <div class="slideall" style="height: auto;">
        <div class="long-title"><span class="all-goods">全部分类</span></div>
        <nav-cont/>
        <banner-two/>
        <navfull/>
        <smallnav/>
        <activity/>
        <div class="clear"></div>
        <marqueen-two/>
        <div class="clear"></div>
    </div>
</template>

<script>
    import NavCont from "./slideall/nav-cont";
    import BannerTwo from "./slideall/bannerTwo";
    import Navfull from "./slideall/navfull";
    import Smallnav from "./slideall/smallnav";
    import Activity from "./slideall/activity";
    import MarqueenTwo from "./slideall/marqueenTwo";
    export default {
        name: "shopNav",
        components: {MarqueenTwo, Activity, Smallnav, Navfull, BannerTwo, NavCont}
    }
</script>

<style scoped>

</style>
