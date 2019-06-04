<template>
  <el-row>
    <el-col :span="22" :offset="2" style="margin-top: 12px">
  <div class="dashboard-editor-container">
    <div class=" clearfix">
      <pan-thumb :image="avatar" style="float: left">
        欢迎您！
      </pan-thumb>
      <div class="info-container">
        <span class="display_name">{{ name }}</span>
      </div>
    </div>
  </div>
    </el-col>
  </el-row>
</template>

<script>
import { mapGetters } from 'vuex'
import PanThumb from '@/components/PanThumb'

export default {
  name: 'Dashboard',
    components: { PanThumb },
    computed: {
        ...mapGetters([
            'name',
            'avatar',
            'roles'
        ])
    }
}
</script>

<style lang="scss" scoped>
.dashboard {
  &-container {
    margin: 30px;
  }
  &-text {
    font-size: 20px;
    line-height: 46px;
  }
}
</style>
