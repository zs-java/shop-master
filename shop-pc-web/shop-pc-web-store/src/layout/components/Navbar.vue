<template>
  <div class="navbar">
    <hamburger :is-active="sidebar.opened" class="hamburger-container" @toggleClick="toggleSideBar" />
    <breadcrumb class="breadcrumb-container" />
    <div class="item-right">
      <el-row>
      <el-dropdown class="height" trigger="click">
    <span class="el-dropdown-link">
      <div class="head-m">
        <el-badge :value="3" class="item">
       <div class="icon-size">
         <i class="el-icon-message"></i>
       </div>
        </el-badge>
      </div>
      <i class="el-icon-right"></i>
    </span>
        <el-dropdown-menu slot="dropdown">
           
        </el-dropdown-menu>
      </el-dropdown>
        <el-dropdown class="height">
    <span class="el-dropdown-link">
      <div class="head-m">
       <img :src="avatar+'?imageView2/1/w/80/h/80'" class="user-avatar">
      </div>
      <i class="el-icon-right"></i>
    </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>个人资料</el-dropdown-item>
            <el-dropdown-item divided>
              <span  @click="logout">退出</span>
            </el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </el-row>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'
import Breadcrumb from '@/components/Breadcrumb'
import Hamburger from '@/components/Hamburger'
export default {
  components: {
    Breadcrumb,
    Hamburger
  },
  computed: {
    ...mapGetters([
      'sidebar',
      'avatar'
    ])
  },
  methods: {
    toggleSideBar() {
      this.$store.dispatch('app/toggleSideBar')
    },
    async logout() {
      await this.$store.dispatch('user/logout')
      this.$router.push(`/login?redirect=${this.$route.fullPath}`)
    }
  }
}
</script>

<style lang="scss" scoped>
.navbar {
  height: 50px;
  overflow: hidden;
  position: relative;
  background: #fff;
  box-shadow: 0 1px 4px rgba(0, 21, 41, .08);
  .hamburger-container {
    line-height: 46px;
    height: 100%;
    float: left;
    cursor: pointer;
    transition: background .3s;
    -webkit-tap-highlight-color: transparent;
    .el-dropdown-link {
      cursor: pointer;
      color: #409EFF;
    }
    .el-icon-arrow-down {
      font-size: 12px;
    }
    &:hover {
      background: rgba(0, 0, 0, .025)
    }
  }

  .breadcrumb-container {
    float: left;
  }
  .item-right{
    float: right;
    .height{
      height: 40px;
    }
    .head-m{
      margin-top: 5px;
      margin-right: 10px;
      position: relative;
      cursor: pointer;
      .icon-size{
        font-size: 30px;
        &:hover {
          color: #99a9bf;
        }
      }
      .user-avatar {
        cursor: pointer;
        width: 40px;
        height: 40px;
        border-radius: 10px;
      }
    }
  }
}
</style>
