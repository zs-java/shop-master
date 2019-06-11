<template>
  <aside class="menu">
    <ul>
      <li class="person active">
        <!--<a href="index.html">个人中心</a>-->
        <router-link to="/">个人中心</router-link>
      </li>
      <li class="person">
        <a href="#">个人资料</a>
        <ul>
          <li>
            <router-link to="/info">个人信息</router-link>
          </li>
          <li>
            <router-link to="/safety">安全设置</router-link>
          </li>
          <li>
            <router-link to="/address">收货地址</router-link>
          </li>
        </ul>
      </li>
      <li class="person">
        <a href="#">我的交易</a>
        <ul>
          <li>
            <router-link to="/order">订单管理</router-link>
          </li>
          <li>
            <router-link to="/change">退款售后</router-link>
          </li>
        </ul>
      </li>
      <li class="person">
        <a href="#">我的资产</a>
        <ul>
          <li>
            <router-link to="/coupon">优惠券</router-link>
          </li>
          <li>
            <router-link to="/bonus">红包</router-link>
          </li>
          <li>
            <router-link to="/bill">账单明细</router-link>
          </li>
        </ul>
      </li>

      <li class="person">
        <a href="#">我的小窝</a>
        <ul>
          <li>
            <router-link to="/collection">收藏</router-link>
          </li>
          <li>
            <router-link to="/foot">足迹</router-link>
          </li>
          <li>
            <router-link to="/comment">评价</router-link>
          </li>
          <li>
            <router-link to="/news">消息</router-link>
          </li>
        </ul>
      </li>

    </ul>

  </aside>
</template>

<script>
  export default {
    name: "LeftMenu"
  }
</script>

<style scoped>

</style>
