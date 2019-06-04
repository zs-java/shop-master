<template>
    <div class="nav white">
        <div class="logo"><img src="../../../assets/images/logo.png"></div>
        <div class="logoBig">
            <li class=""><img src="../../../assets/images/logobig.png"></li>
        </div>

        <div class="search-bar pr">
            <a name="index_none_header_sysc" href="#"></a>
            <form action="#/search">
                <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        name: "nav_white",
        method: {
            submit:function(){
                    }
                }
    }
</script>

<style scoped>

</style>
