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
              <el-col :span="19">
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
            <span style="color: red">*</span>商品库存数量：
              </el-col>
              <el-col :span="19">
                <el-input
            type="text"
            class="inputwidth"
            placeholder="请输入内容"
            v-model="text"
            maxlength="150"/>
                <div class="smallmessage">商铺库存数量必须为0~999999999之间的整数，若启用了库存配置，则系统自动计算商品的总数，此处无需卖家填写</div>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
               库存警告数量：
              </el-col>
              <el-col :span="19">
                <el-input
                  type="text"
                  class="inputwidth"
                  placeholder="请输入内容"
                  v-model="text"
                  maxlength="150"/>
                <div class="smallmessage">设置最低库存预警值。当库存低于预警值时商家中心商品列表页库存列红字提醒，请填写0~255的数字，0为不预警。</div>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
                商品品牌：
              </el-col>
              <el-col :span="19">
                <el-select v-model="value2" filterable placeholder="请选择">
                  <el-option
                    v-for="item in options2"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
                  </el-option>
                </el-select>
                <div class="smallmessage">选择商品品牌可进行搜索</div>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
                <span style="color: red">*</span>商品主图片：
              </el-col>
              <el-col :span="19">
                <el-upload
                class="avatar-uploader"
                action="https://jsonplaceholder.typicode.com/posts/"
                :show-file-list="false"
                :on-success="handleAvatarSuccess"
                :before-upload="beforeAvatarUpload">
                <img v-if="imageUrl" :src="imageUrl" class="avatar">
                <i v-else class="el-icon-plus avatar-uploader-icon"></i>
              </el-upload>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">

              </el-col>
              <el-col :span="19">
                <el-button type="primary">图片库选择</el-button>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
                主图视频：
              </el-col>
              <el-col :span="19">
                <el-upload
                  action="https://jsonplaceholder.typicode.com/posts/"
                  list-type="picture-card"
                  :on-preview="handlePictureCardPreview"
                  :on-remove="handleRemove">
                  <i class="el-icon-plus"></i>
                </el-upload>
                <el-dialog :visible.sync="dialogVisible">
                  <video width="100%" :src="dialogImageUrl" alt=""></video>
                </el-dialog>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
                  商品图片：
              </el-col>
              <el-col :span="19">
                <el-upload
                  action="https://jsonplaceholder.typicode.com/posts/"
                  list-type="picture-card"
                  :on-preview="handlePictureCardPreview"
                  :on-remove="handleRemove">
                  <i class="el-icon-plus"></i>
                </el-upload>
                <el-dialog :visible.sync="dialogVisible">
                  <img width="100%" :src="dialogImageUrl" alt="">
                </el-dialog>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">

              </el-col>
              <el-col :span="19">
                <el-button type="primary">图片库选择</el-button>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
                  商品运费：
              </el-col>
              <el-col :span="19">
                <div class="top">
                  <el-radio v-model="radio" label="1">按固定运费</el-radio>
                  <el-radio v-model="radio" label="2">按运费模板</el-radio>
                </div>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
                退货标识：
              </el-col>
              <el-col :span="19">
                <div class="top">
                  <el-checkbox-group v-model="checklist1">
                    <el-checkbox label="维修"></el-checkbox>
                    <el-checkbox label="退货"></el-checkbox>
                    <el-checkbox label="换货"></el-checkbox>
                    <el-checkbox label="仅退款"></el-checkbox>
                  </el-checkbox-group>
                </div>
              </el-col>
            </el-row>
          </div>
          </li>
          <li><div class="lim">
            <el-row>
              <el-col :span="5" class="col">
                商品服务：
              </el-col>
              <el-col :span="19">
                <div class="top">
                  <el-checkbox-group v-model="checklist2">
                    <el-checkbox label="正品保证"></el-checkbox>
                    <el-checkbox label="包退服务"></el-checkbox>
                    <el-checkbox label="闪速配送"></el-checkbox>
                  </el-checkbox-group>
                </div>
              </el-col>
            </el-row>
          </div>
          </li>
          <div class="header">
            <span>#详细描述</span>
            <hr>
            <textarea :id="tinymceId" class="tinymce-textarea" />
          </div>
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
  import plugins from './plugins'
  import toolbar from './toolbar'
  import load from './dynamicLoadScript'

  // why use this cdn, detail see https://github.com/PanJiaChen/tinymce-all-in-one
  const tinymceCDN = 'https://cdn.jsdelivr.net/npm/tinymce-all-in-one@4.9.3/tinymce.min.js'

  export default {
        name: "addinfo",
    props: {
      id: {
        type: String,
        default: function() {
          return 'vue-tinymce-' + +new Date() + ((Math.random() * 1000).toFixed(0) + '')
        }
      },
      value: {
        type: String,
        default: ''
      },
      toolbar: {
        type: Array,
        required: false,
        default() {
          return []
        }
      },
      menubar: {
        type: String,
        default: 'file edit insert view format table'
      },
      height: {
        type: [Number, String],
        required: false,
        default: 360
      },
      width: {
        type: [Number, String],
        required: false,
        default: 'auto'
      }
    },
      data(){
          return{
            hasChange: false,
            hasInit: false,
            tinymceId: this.id,
            fullscreen: false,
            languageTypeList: {
              'en': 'en',
              'zh': 'zh_CN',
              'es': 'es_MX',
              'ja': 'ja'
            },
            checklist1:[],
            checklist2:[],
            radio:'1',
            dialogImageUrl: '',
            dialogVisible: false,
            shopType:'家用电器',
            imageUrl:'',
            text:'',
            options2: [{
              value: '选项1',
              label: '黄金糕'
            }, {
              value: '选项2',
              label: '双皮奶'
            }, {
              value: '选项3',
              label: '蚵仔煎'
            }, {
              value: '选项4',
              label: '龙须面'
            }, {
              value: '选项5',
              label: '北京烤鸭'
            }],
            value2:'',
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
      },
      components:{
      },
      mounted(){
        this.init()
      },
    activated() {
      if (window.tinymce) {
        this.initTinymce()
      }
    },

    deactivated() {
      this.destroyTinymce()
    },
    destroyed() {
      this.destroyTinymce()
    },
    watch: {
      value(val) {
        if (!this.hasChange && this.hasInit) {
          this.$nextTick(() =>
            window.tinymce.get(this.tinymceId).setContent(val || ''))
        }
      }
    },
    computed: {
      containerWidth() {
        const width = this.width
        if (/^[\d]+(\.[\d]+)?$/.test(width)) { // matches `100`, `'100'`
          return `${width}px`
        }
        return width
      }
    },
      methods: {

        init() {
          // dynamic load tinymce from cdn
          load(tinymceCDN, (err) => {
            if (err) {
              this.$message.error(err.message)
              return
            }
            this.initTinymce()
          })
        },
        initTinymce() {
          const _this = this
          window.tinymce.init({
            selector: `#${this.tinymceId}`,
            language: this.languageTypeList['en'],
            height: this.height,
            body_class: 'panel-body ',
            object_resizing: false,
            toolbar: this.toolbar.length > 0 ? this.toolbar : toolbar,
            menubar: this.menubar,
            plugins: plugins,
            end_container_on_empty_block: true,
            powerpaste_word_import: 'clean',
            code_dialog_height: 450,
            code_dialog_width: 1000,
            advlist_bullet_styles: 'square',
            advlist_number_styles: 'default',
            imagetools_cors_hosts: ['www.tinymce.com', 'codepen.io'],
            default_link_target: '_blank',
            link_title: false,
            nonbreaking_force_tab: true, // inserting nonbreaking space &nbsp; need Nonbreaking Space Plugin
            init_instance_callback: editor => {
              if (_this.value) {
                editor.setContent(_this.value)
              }
              _this.hasInit = true
              editor.on('NodeChange Change KeyUp SetContent', () => {
                this.hasChange = true
                this.$emit('input', editor.getContent())
              })
            },
            setup(editor) {
              editor.on('FullscreenStateChanged', (e) => {
                _this.fullscreen = e.state
              })
            }
            // 整合七牛上传
            // images_dataimg_filter(img) {
            //   setTimeout(() => {
            //     const $image = $(img);
            //     $image.removeAttr('width');
            //     $image.removeAttr('height');
            //     if ($image[0].height && $image[0].width) {
            //       $image.attr('data-wscntype', 'image');
            //       $image.attr('data-wscnh', $image[0].height);
            //       $image.attr('data-wscnw', $image[0].width);
            //       $image.addClass('wscnph');
            //     }
            //   }, 0);
            //   return img
            // },
            // images_upload_handler(blobInfo, success, failure, progress) {
            //   progress(0);
            //   const token = _this.$store.getters.token;
            //   getToken(token).then(response => {
            //     const url = response.data.qiniu_url;
            //     const formData = new FormData();
            //     formData.append('token', response.data.qiniu_token);
            //     formData.append('key', response.data.qiniu_key);
            //     formData.append('file', blobInfo.blob(), url);
            //     upload(formData).then(() => {
            //       success(url);
            //       progress(100);
            //     })
            //   }).catch(err => {
            //     failure('出现未知问题，刷新页面，或者联系程序员')
            //     console.log(err);
            //   });
            // },
          })
        },
        destroyTinymce() {
          const tinymce = window.tinymce.get(this.tinymceId)
          if (this.fullscreen) {
            tinymce.execCommand('mceFullScreen')
          }

          if (tinymce) {
            tinymce.destroy()
          }
        },
        handleRemove(file, fileList) {
          console.log(file, fileList);
        },
        handlePictureCardPreview(file) {
          this.dialogImageUrl = file.url;
          this.dialogVisible = true;
        },
        handleAvatarSuccess(res, file) {
          this.imageUrl = URL.createObjectURL(file.raw);
        },
        beforeAvatarUpload(file) {
          const isJPG = file.type === 'image/jpeg';
          const isLt2M = file.size / 1024 / 1024 < 2;

          if (!isJPG) {
            this.$message.error('上传头像图片只能是 JPG 格式!');
          }
          if (!isLt2M) {
            this.$message.error('上传头像图片大小不能超过 2MB!');
          }
          return isJPG && isLt2M;
        }
      }
    }
</script>

<style scoped>
  .top{
    margin-top: 10px;
  }
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
    width:450px ;
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
  /*上传主图片样式*/
  .avatar-uploader .el-upload {
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }

  .avatar-uploader-icon {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }
  .avatar-uploader-icon:hover {
    border-color: #409EFF;
  }
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
</style>
