<template>
    <div class="search">
        <div class="search-list">
            <nav-table/>
            <div class="am-g am-g-fixed">
                <div class="am-u-sm-12 am-u-md-12">
                    <theme-popover/>
                    <div id="main" class="srp-main">
                        <div class="grid-total">
                            <grid-left/>
                            <grid-right/>
                        </div>
                    </div>
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
    import Footer from "../shopMainbg/shopMain/footer";
    import NavTable from "./search/nav-table";
    import GridLeft from "./trigger/grid-left";
    import GridRight from "./trigger/grid-right";
    export default {
        name: "trigger",
        components: {GridRight, GridLeft, NavTable, Footer,ThemePopover,AmPaginationRight},

    }
</script>

<style scoped>

</style>
