<template>
    <div class="theme-popover">
        <div class="searchAbout">
            <span class="font-pale">相关搜索：</span>
            <a title="坚果" href="#">坚果</a>
            <a title="瓜子" href="#">瓜子</a>
            <a title="鸡腿" href="#">豆干</a>

        </div>
        <ul class="select">
            <p class="title font-normal">
                <span class="fl">松子</span>
                <span class="total fl">搜索到<strong class="num">997</strong>件相关商品</span>
            </p>
            <div class="clear"></div>
            <li class="select-result">
                <dl>
                    <dt>已选</dt>
                    <dd class="select-no"></dd>
                    <p class="eliminateCriteria">清除</p>
                </dl>
            </li>
            <div class="clear"></div>
            <li class="select-list">
                <dl id="select1">
                    <dt class="am-badge am-round">品牌</dt>

                    <div class="dd-conent">
                        <dd class="select-all selected"><a href="#">全部</a></dd>
                        <dd><a href="#">百草味</a></dd>
                        <dd><a href="#">良品铺子</a></dd>
                        <dd><a href="#">新农哥</a></dd>
                        <dd><a href="#">楼兰蜜语</a></dd>
                        <dd><a href="#">口水娃</a></dd>
                        <dd><a href="#">考拉兄弟</a></dd>
                    </div>

                </dl>
            </li>
            <li class="select-list">
                <dl id="select2">
                    <dt class="am-badge am-round">种类</dt>
                    <div class="dd-conent">
                        <dd class="select-all selected"><a href="#">全部</a></dd>
                        <dd><a href="#">东北松子</a></dd>
                        <dd><a href="#">巴西松子</a></dd>
                        <dd><a href="#">夏威夷果</a></dd>
                        <dd><a href="#">松子</a></dd>
                    </div>
                </dl>
            </li>
            <li class="select-list">
                <dl id="select3">
                    <dt class="am-badge am-round">选购热点</dt>
                    <div class="dd-conent">
                        <dd class="select-all selected"><a href="#">全部</a></dd>
                        <dd><a href="#">手剥松子</a></dd>
                        <dd><a href="#">薄壳松子</a></dd>
                        <dd><a href="#">进口零食</a></dd>
                        <dd><a href="#">有机零食</a></dd>
                    </div>
                </dl>
            </li>

        </ul>
        <div class="clear"></div>
    </div>
</template>

<script>
    export default {
        name: "theme-popover"
    }
</script>

<style scoped>

</style>
