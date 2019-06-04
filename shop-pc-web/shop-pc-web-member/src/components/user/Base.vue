<template>
  <div>
    <Header></Header>
    <navbar></navbar>
    <b class="line"></b>
    <div class="center">
      <div class="col-main">
        <div class="main-wrap">
          <transition mode="out-in">
            <router-view></router-view>
          </transition>
        </div>
        <Footer></Footer>
      </div>
      <left-menu></left-menu>
    </div>
  </div>

</template>

<script>
  import LeftMenu from "../include/LeftMenu";
  import Footer from "../include/Footer";
  import Header from "../include/Header";
  import Navbar from "../include/navbar";
  export default {
    name: "Base",
    components: {Navbar, Header, Footer, LeftMenu}
  }
</script>

<style>
  @import "/static/css/personal.css";
  /*@import "/static/css/infstyle.css";*/
  /*@import "/static/css/stepstyle.css";*/
  .v-enter,
  .v-leave-to {
    opacity: 0;
    transform: translateX(140px)
  }
  .v-enter-active,
  .v-leave-active {
    transition: all 500ms ease;
  }
</style>
