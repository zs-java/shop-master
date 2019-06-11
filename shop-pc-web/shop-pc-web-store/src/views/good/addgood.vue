<template>
  <div>
  <el-steps :active="0" finish-status="success" simple>
    <el-step title="选择商品分类" icon="el-icon-edit"></el-step>
    <el-step title="填写商品信息" icon="el-icon-upload"></el-step>
    <el-step title="填写商品属性" icon="el-icon-picture"></el-step>
    <el-step title="选择商品关联" icon="el-icon-picture"></el-step>
  </el-steps>
    <router-view></router-view>
  </div>

</template>

<script>
    export default {
        name: "addgood"
    }
</script>

<style scoped>

</style>
