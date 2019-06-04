<template>
    <div class="shopMain" id="shopmain">
        <am-container/>
        <div class="clear "></div>


        <div class="f1">
            <!--甜点-->

            <div class="am-container ">
                <div class="shopTitle ">
                    <h4 class="floor-title">甜品</h4>
                    <div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>每一道甜品都有一个故事</h3></div>
                    <div class="today-brands " style="right:0px ;top:13px;">
                        <a href="# ">桂花糕</a>|
                        <a href="# ">奶皮酥</a>|
                        <a href="# ">栗子糕 </a>|
                        <a href="# ">马卡龙</a>|
                        <a href="# ">铜锣烧</a>|
                        <a href="# ">豌豆黄</a>
                    </div>

                </div>
            </div>

            <div class="am-g am-g-fixed floodSix ">
                <div class="am-u-sm-5 am-u-md-3 text-one list">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                    </div>
                    <a href="# ">
                        <img src="../../assets/images/5.jpg">
                        <div class="outer-con ">
                            <div class="title ">
                                零食大礼包开抢啦
                            </div>
                            <div class="sub-title ">
                                当小鱼儿恋上软豆腐
                            </div>
                        </div>
                    </a>
                    <div class="triangle-topright"></div>
                </div>

                <div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>

                    </div>
                    <a href="# "><img src="../../assets/images/act1.png"></a>
                </div>

                <li class="">
                    <div class="am-u-md-2 am-u-lg-2 text-three">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                小优布丁
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="../../assets/images/1.jpg"></a>
                    </div>
                </li>
                <li class="">
                    <div class="am-u-md-2 am-u-lg-2 text-three sug">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                小优布丁
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="../../assets/images/2.jpg"></a>
                    </div>
                </li>
                <li class="">
                    <div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                小优布丁
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="../../assets/images/5.jpg"></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                小优布丁
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="../../assets/images/3.jpg"></a>
                    </div>
                </li>
                <li>
                    <div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
                        <div class="boxLi"></div>
                        <div class="outer-con ">
                            <div class="title ">
                                小优布丁
                            </div>
                            <div class="sub-title ">
                                ¥4.8
                            </div>

                        </div>
                        <a href="# "><img src="../../assets/images/4.jpg"></a>
                    </div>
                </li>
            </div>

            <div class="clear "></div>
        </div>
        <Footer/>
    </div>
</template>

<script>
    import AmContainer from "./shopMain/am-container";
    import Footer from "./shopMain/footer";
    export default {
        name: "shopMain",
        components: {Footer, AmContainer}
    }
</script>

<style scoped>

</style>
