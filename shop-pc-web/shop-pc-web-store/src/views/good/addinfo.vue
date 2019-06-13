<template>
    <div>
      <el-steps :active="1" finish-status="success" simple>
        <el-step title="选择商品分类" icon="el-icon-edit"></el-step>
        <el-step title="填写商品信息" icon="el-icon-upload"></el-step>
        <el-step title="填写商品属性" icon="el-icon-picture"></el-step>
        <el-step title="选择商品关联" icon="el-icon-picture"></el-step>
      </el-steps>
      <ul>
      <el-row>
        <el-col :span="22" :offset="1">
      <div class="header">
        <span>#通用信息</span>
        <hr>
      </div>
          <li>
            <div class="lim">
              <el-row>
              <el-col :span="5" class="col">
                    商品分类：
              </el-col>
              <el-col :span="19">
              {{shopType}} <i class="el-icon-edit-outline type"></i>
              </el-col>
            </el-row>
            </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
            店铺分类：
              </el-col>
              <el-col span="19">
            <el-cascader :options="options" style="width: 400px">
              <template slot-scope="{ node, data }">
                <span>{{ data.label }}</span>
                <span v-if="!node.isLeaf"> ({{ data.children.length }}) </span>
              </template>
            </el-cascader>
            <el-button type="primary">添加</el-button>
              </el-col>
            </el-row>
          </div></li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
            商品货号：
              </el-col>
              <el-col :span="19">
              <el-input
            type="text"
            class="inputwidth"
            placeholder="请输入内容"
            v-model="text"
            maxlength="20"
            show-word-limit/>
            <div class="smallmessage">商家货号是指商家管理商品的编号，买家不可见最多可输入20个字符，支持输入中文、字母、数字、_、/、-和小数点</div>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
            <span style="color: red">*</span>商品名称：
              </el-col>
              <el-col :span="19">
                <el-input
            type="text"
            class="inputwidth"
            placeholder="请输入内容"
            v-model="text"
            maxlength="150"/>
            <div class="smallmessage">商品标题名称长度至少1个字符，最长150个汉字</div>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
            <span style="color: red">*</span>本店售价：
              </el-col>
              <el-col :span="19">
                <el-input
            type="text"
            class="inputwidth"
            placeholder="请输入内容"
            v-model="text"
            maxlength="150"/>
            <div class="smallmessage">价格必须是0.01~9999999之间的数字，且不能高于市场价。此价格为商品实际销售价格，如果商品存在规格，该价格显示最低价格。</div>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
            <span style="color: red">*</span>商品库存量：
              </el-col>
              <el-col :span="19">
                <el-input
            type="text"
            class="inputwidth"
            placeholder="请输入内容"
            v-model="text"
            maxlength="150"/>
              </el-col>
            </el-row>
          </div>
          </li>
          <div style="text-align: center;margin-top: 30px">
        <router-link to="addgood"><el-button>上一步</el-button></router-link>
        <router-link to="addinfo"><el-button type='primary'>下一步</el-button></router-link>
      </div>
        </el-col>
      </el-row>
      </ul>
    </div>

</template>

<script>
    export default {
        name: "addinfo",
      data(){
          return{
            shopType:'家用电器',
            text:'',
            options: [{
              value: 'zhinan',
              label: '指南',
              children: [{
                value: 'shejiyuanze',
                label: '设计原则',
                children: [{
                  value: 'yizhi',
                  label: '一致'
                }, {
                  value: 'fankui',
                  label: '反馈'
                }, {
                  value: 'xiaolv',
                  label: '效率'
                }, {
                  value: 'kekong',
                  label: '可控'
                }]
              }, {
                value: 'daohang',
                label: '导航',
                children: [{
                  value: 'cexiangdaohang',
                  label: '侧向导航'
                }, {
                  value: 'dingbudaohang',
                  label: '顶部导航'
                }]
              }]
            }, {
              value: 'zujian',
              label: '组件',
              children: [{
                value: 'basic',
                label: 'Basic',
                children: [{
                  value: 'layout',
                  label: 'Layout 布局'
                }, {
                  value: 'color',
                  label: 'Color 色彩'
                }, {
                  value: 'typography',
                  label: 'Typography 字体'
                }, {
                  value: 'icon',
                  label: 'Icon 图标'
                }, {
                  value: 'button',
                  label: 'Button 按钮'
                }]
              }, {
                value: 'form',
                label: 'Form',
                children: [{
                  value: 'radio',
                  label: 'Radio 单选框'
                }, {
                  value: 'checkbox',
                  label: 'Checkbox 多选框'
                }, {
                  value: 'input',
                  label: 'Input 输入框'
                }, {
                  value: 'input-number',
                  label: 'InputNumber 计数器'
                }, {
                  value: 'select',
                  label: 'Select 选择器'
                }, {
                  value: 'cascader',
                  label: 'Cascader 级联选择器'
                }, {
                  value: 'switch',
                  label: 'Switch 开关'
                }, {
                  value: 'slider',
                  label: 'Slider 滑块'
                }, {
                  value: 'time-picker',
                  label: 'TimePicker 时间选择器'
                }, {
                  value: 'date-picker',
                  label: 'DatePicker 日期选择器'
                }, {
                  value: 'datetime-picker',
                  label: 'DateTimePicker 日期时间选择器'
                }, {
                  value: 'upload',
                  label: 'Upload 上传'
                }, {
                  value: 'rate',
                  label: 'Rate 评分'
                }, {
                  value: 'form',
                  label: 'Form 表单'
                }]
              }, {
                value: 'data',
                label: 'Data',
                children: [{
                  value: 'table',
                  label: 'Table 表格'
                }, {
                  value: 'tag',
                  label: 'Tag 标签'
                }, {
                  value: 'progress',
                  label: 'Progress 进度条'
                }, {
                  value: 'tree',
                  label: 'Tree 树形控件'
                }, {
                  value: 'pagination',
                  label: 'Pagination 分页'
                }, {
                  value: 'badge',
                  label: 'Badge 标记'
                }]
              }, {
                value: 'notice',
                label: 'Notice',
                children: [{
                  value: 'alert',
                  label: 'Alert 警告'
                }, {
                  value: 'loading',
                  label: 'Loading 加载'
                }, {
                  value: 'message',
                  label: 'Message 消息提示'
                }, {
                  value: 'message-box',
                  label: 'MessageBox 弹框'
                }, {
                  value: 'notification',
                  label: 'Notification 通知'
                }]
              }, {
                value: 'navigation',
                label: 'Navigation',
                children: [{
                  value: 'menu',
                  label: 'NavMenu 导航菜单'
                }, {
                  value: 'tabs',
                  label: 'Tabs 标签页'
                }, {
                  value: 'breadcrumb',
                  label: 'Breadcrumb 面包屑'
                }, {
                  value: 'dropdown',
                  label: 'Dropdown 下拉菜单'
                }, {
                  value: 'steps',
                  label: 'Steps 步骤条'
                }]
              }, {
                value: 'others',
                label: 'Others',
                children: [{
                  value: 'dialog',
                  label: 'Dialog 对话框'
                }, {
                  value: 'tooltip',
                  label: 'Tooltip 文字提示'
                }, {
                  value: 'popover',
                  label: 'Popover 弹出框'
                }, {
                  value: 'card',
                  label: 'Card 卡片'
                }, {
                  value: 'carousel',
                  label: 'Carousel 走马灯'
                }, {
                  value: 'collapse',
                  label: 'Collapse 折叠面板'
                }]
              }]
            }, {
              value: 'ziyuan',
              label: '资源',
              children: [{
                value: 'axure',
                label: 'Axure Components'
              }, {
                value: 'sketch',
                label: 'Sketch Templates'
              }, {
                value: 'jiaohu',
                label: '组件交互文档'
              }]
            }]
          }
      }
    }
</script>

<style scoped>
  .header{
    margin-top: 5px;
    font-size: 16px;
    color: #1b961b;
  }
  hr{
    border-bottom: 5px;
    border-color: #1b961b;
  }
  li{
    list-style: none;
    font-size: 14px;
    color: #3C3C3C;
  }
  .lim{
    padding: 20px;
  }
  .type{
    color: #1b961b;
    font-size: 20px;
    padding-top: 5px;
  }
  .type:hover{
    color: #d2620b;
    cursor:pointer
  }
  .inputwidth{
    width:500px ;
  }
  .smallmessage{
    font-size: 10px;
    color: #9b9b9b;
    margin-top: 10px;

  }
  .col{
    text-align: right;
    padding-top: 10px;
  }
</style>
