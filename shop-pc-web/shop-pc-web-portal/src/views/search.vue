<template>
   <div>
       <Hmtop/>
       <b class="line"></b>
            <router-view/>
       <nav-cir/>
       <tip/>

   </div>

</template>

<script>
    import Hmtop from "../components/include/hmtop";
    import NavCir from "../components/navCir/navCir";

    import "../../src/assets/css/seastyle.css";
    import Tip from "../components/tip/tip";

    export default {
        name: "search",
        components: { Tip, NavCir,Hmtop}
    }
</script>

<style scoped>
    @import "../assets/css/global-min.css";
    @import "../assets/css/index.css";
    @import "../assets/css/tips.css";
</style>
