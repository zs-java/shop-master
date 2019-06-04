<template>
    <div>
        <AmContainer_header/>
        <Nav_white/>
        <div class="clear"></div>
        <b class="line"></b>
        <ListMain/>
        <tip/>
        <div style="display:none;" class="jqPreload0"><img src="../assets/images/01.jpg"></div>
        <div class="zoomDiv" style="top: 239.781px; left: 732.5px; width: 450px; height: 400px; display: block;"><img class="bigimg" src="../assets/images/01.jpg"></div>
        <div class="zoomMask" style="width: 225px; height: 200px; visibility: visible; top: 439.781px; left: 399.5px;">&nbsp;</div>
    </div>
</template>

<script>
    import AmContainer_header from "../components/include/hmtop/am-container_header";
    import Nav_white from "../components/include/hmtop/nav_white";
    import ListMain from "../components/introduction/listMain";
    export default {
        name: "introduction",
        components: {ListMain,Nav_white,AmContainer_header}
    }
</script>

<style scoped>
    @import "../assets/css/style.css";
    @import "../assets/css/optstyle.css";
</style>
