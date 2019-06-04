<template>
    <div class="search">
    <div class="search-list">
        <nav-table/>
        <div class="am-g am-g-fixed">
            <div class="am-u-sm-12 am-u-md-12">
                <theme-popover/>
                <search-content/>
                <search-side/>
                <div class="clear"></div>
                <am-pagination-right/>
            </div>
        </div>
        <Footer/>
    </div>
    </div>
</template>

<script>
    import AmPaginationRight from "./search/am-pagination-right";
    import ThemePopover from "./search/theme-popover";
    import SearchContent from "./search/search-content";
    import SearchSide from "./search/search-side";
    import Footer from "../shopMainbg/shopMain/footer";
    import NavTable from "./search/nav-table";
    export default {
        name: "seach",
        components: {NavTable, Footer,SearchSide,SearchContent,ThemePopover,AmPaginationRight}
    }
</script>

<style scoped>

</style>
