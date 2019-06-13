<template>
  <div>
  <el-steps :active="0" finish-status="success" simple>
    <el-step title="选择商品分类" icon="el-icon-edit"></el-step>
    <el-step title="填写商品信息" icon="el-icon-upload"></el-step>
    <el-step title="填写商品属性" icon="el-icon-picture"></el-step>
    <el-step title="选择商品关联" icon="el-icon-picture"></el-step>
  </el-steps>
    <div style="margin: 50px">
      <p><span>你当前选择的类型是：</span></p>
      <el-row>
        <el-col :span="7">
          <ul>
            <el-card shadow="never" style="height: 300px">
              <li><span>请选择分类</span></li>
              <li><span> ss</span></li>
              <li><span> ss</span></li>
            </el-card>
          </ul>
        </el-col>
        <el-col :span="1">
          <div style="margin-top: 140px;margin-left: 30px;">
            <i style="font-size: 40px;color: #8e8e8e;" class="el-icon-arrow-right"></i>
          </div>
        </el-col>
        <el-col :span="7">
          <ul>
            <el-card shadow="never" style="height: 300px">
              <li><span>请选择分类</span></li>
              <li><span> ss</span></li>
              <li><span> ss</span></li>
            </el-card>
          </ul>
        </el-col>
        <el-col :span="1">
          <div style="margin-top: 140px;margin-left: 30px;">
            <i style="font-size: 40px;color: #8e8e8e;" class="el-icon-arrow-right"></i>
          </div>
        </el-col>
        <el-col :span="7">
          <ul>
            <el-card shadow="never" style="height: 300px">
              <li><span>请选择分类</span></li>
              <li><span> ss</span></li>
              <li><span> ss</span></li>
            </el-card>
          </ul>
        </el-col>
      </el-row>
      <div style="text-align: center;margin-top: 30px">
        <router-link to="addinfo"><el-button type='primary'>下一步</el-button></router-link>
      </div>
    </div>


  </div>

</template>

<script>
export default {
  name: "addgood",


}

</script>

<style scoped>
  li:hover{
    background:#3bb4f2;
    color: white;
  }
  li{
    padding: 6px;
    list-style: none;
    cursor:pointer
  }
  li span{
    margin: 10px;
  }

</style>
