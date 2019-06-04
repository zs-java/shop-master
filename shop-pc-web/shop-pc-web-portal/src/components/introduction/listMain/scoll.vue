<template>
    <div class="scoll">
        <section class="slider">
            <div class="flexslider" style="">

                <div class="flex-viewport" style="overflow: hidden; position: relative;"><ul class="slides" style="width: 1000%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);"><li class="clone" aria-hidden="true" style="width: 0px; float: left; display: block;">
                    <img src="../../../assets/images/03.jpg" draggable="false">
                </li>
                    <li style="width: 0px; float: left; display: block;" class="flex-active-slide">
                        <img src="../../../assets/images/01.jpg" title="pic" draggable="false">
                    </li>
                    <li style="width: 0px; float: left; display: block;">
                        <img src="../../../assets/images/02.jpg" draggable="false">
                    </li>
                    <li style="width: 0px; float: left; display: block;">
                        <img src="../../../assets/images/03.jpg" draggable="false">
                    </li>
                    <li style="width: 0px; float: left; display: block;" class="clone" aria-hidden="true">
                        <img src="../../../assets/images/01.jpg" title="pic" draggable="false">
                    </li></ul></div><ol class="flex-control-nav flex-control-paging"><li><a class="flex-active">1</a></li><li><a>2</a></li><li><a>3</a></li></ol><ul class="flex-direction-nav"><li class="flex-nav-prev"><a class="flex-prev" href="#">Previous</a></li><li class="flex-nav-next"><a class="flex-next" href="#">Next</a></li></ul></div>
        </section>
    </div>
</template>

<script>
    export default {
        name: "scoll"
    }
</script>

<style scoped>

</style>
