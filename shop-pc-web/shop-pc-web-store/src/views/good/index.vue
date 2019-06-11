<template xmlns:el-col="http://www.w3.org/1999/html">

  <div class="app-container">
    <el-tabs type="card" v-model="activeName">
      <el-tab-pane label="用户管理" name="first">
        <div style="margin-top: 5px;margin-bottom: 10px">
          <el-row>
            <el-col :span="5">
            <el-input v-model="input3" placeholder="请输入内容">
              <el-button slot="append" icon="el-icon-search"></el-button>
            </el-input>
            </el-col>
            <el-col :span="16" >&nbsp;</el-col>
            <el-col :span="3">
             <router-link to="/example/addgood"><el-button style="width: 150px" icon="el-icon-plus" plain>添加商品</el-button></router-link>
            </el-col>
          </el-row>
        </div>
    <el-table
      v-loading="listLoading"
      :data="list"
      element-loading-text="Loading"
      border
      fit
      highlight-current-row
    >
      <el-table-column align="center" label="ID" width="95">
        <template slot-scope="scope">
          {{ scope.$index }}
        </template>
      </el-table-column>
      <el-table-column label="Title">
        <template slot-scope="scope">
          {{ scope.row.title }}
        </template>
      </el-table-column>
      <el-table-column label="Author" width="110" align="center">
        <template slot-scope="scope">
          <span>{{ scope.row.author }}</span>
        </template>
      </el-table-column>
      <el-table-column label="Pageviews" width="110" align="center">
        <template slot-scope="scope">
          {{ scope.row.pageviews }}
        </template>
      </el-table-column>
      <el-table-column class-name="status-col" label="Status" width="110" align="center">
        <template slot-scope="scope">
          <el-tag :type="scope.row.status | statusFilter">{{ scope.row.status }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column align="center" prop="created_at" label="Display_time" width="200">
        <template slot-scope="scope">
          <i class="el-icon-time" />

        </template>
      </el-table-column>
    </el-table>
      </el-tab-pane>
      <el-tab-pane label="商品回收站"></el-tab-pane>
    </el-tabs>
  </div>
</template>

<script>
import { getList } from '@/api/good'

export default {
  filters: {
    statusFilter(status) {
      const statusMap = {
        published: 'success',
        draft: 'gray',
        deleted: 'danger'
      }
      return statusMap[status]
    }
  },
  data() {
    return {
      activeName:'first',
      list: null,
      listLoading: true,
      input3:'',
      shoptype:'商品列表'
    }
  },
  created() {
    this.fetchData()
  },
  methods: {
      fetchData() {
          this.listLoading = true

          getList().then(response => {
              this.list = response.data.items
              this.listLoading = false
          })

      }
  }
}
</script>
