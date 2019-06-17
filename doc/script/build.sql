DROP TABLE IF EXISTS category;
CREATE TABLE category(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键id',
  `name` VARCHAR(20) COMMENT '分类名称',
  parent_id INT COMMENT '父id',
  `status` INT COMMENT '状态：1正常，2删除，3禁用，4推荐',
  sort INT,
  ins_date DATETIME,
  upd_date DATETIME
) COMMENT = '商品类别表';


DROP TABLE IF EXISTS attribute_key;
CREATE TABLE attribute_key(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键id',
  attribute_name VARCHAR(20) COMMENT '属性名称',
  sort INT,
  ins_date DATETIME,
  upd_date DATETIME
) COMMENT = '属性Key表';


DROP TABLE IF EXISTS attribute_value;
CREATE TABLE attribute_value(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键id',
  attribute_id INT COMMENT '属性id',
  attribute_value VARCHAR(20) COMMENT '属性值',
  sort INT,
  ins_date DATETIME,
  upd_date DATETIME
) COMMENT = '属性Value表';


DROP TABLE IF EXISTS product;
CREATE TABLE product(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键id',
  title VARCHAR(50) COMMENT '商品标题',
  subtitle VARCHAR(50) COMMENT '小标题',
  main_image TEXT COMMENT '主图像，资源url，图片',
  sub_images LONGTEXT COMMENT '小图像，json',
  params LONGTEXT COMMENT '参数，json',
  detail LONGTEXT COMMENT '富文本，详细表述',
  attribute_list LONGTEXT COMMENT '产品规格，json',
  price DECIMAL(32,8) COMMENT '价格',
  stock INT COMMENT '库存',
  sort INT,
  ins_date DATETIME,
  upd_date DATETIME
) COMMENT = '商品表';


-- 商品规格表
DROP TABLE IF EXISTS product_specs;
CREATE TABLE product_specs(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键id',
  product_id INT COMMENT '外键、商品id' REFERENCES product(id),
  specs TEXT COMMENT '商品规格',
  product_stock INT COMMENT '商品库存',
  product_price DECIMAL(32, 8) COMMENT '商品价格',
  sort INT COMMENT '规格顺序',
  ins_date DATETIME,
  upd_date DATETIME
) COMMENT = '商品规格表';

--店铺
DROP TABLE IF EXISTS shop;
CREATE TABLE shop(
  id INT PRIMARY KEY  AUTO_INCREMENT COMMIT '主键id',
  shop_name VARCHAR(50) COMMENT '入驻店铺名称',
  shop_store TEXT COMMENT '店铺动态评分，json',
  company_name VARCHAR(20) COMMENT '店铺名称',
  shop_title VARCHAR(20) COMMENT '店铺标题',
  shop_desc VARCHAR(20) COMMENT '店铺描述',
   `status` INT COMMENT '状态：1审核通过，2未审核，3审核中，4禁用',
  address VARCHAR(50) COMMENT '商家地址',
  phone VARCHAR(20) COMMENT '商家电话',
  email VARCHAR(50) COMMENT '商家邮箱',

)COMMENT = '店铺基本信息';


DROP TABLE IF EXISTS shop_category;
CREATE TABLE shop_category(
    id INT PRIMARY KEY  AUTO_INCREMENT COMMIT '主键id',
    `name` VARCHAR(20) COMMENT '分类名称',
      parent_id INT COMMENT '父id',
      `status` INT COMMENT '状态：1正常，2删除，3禁用，4推荐',
      sort INT,
      ins_date DATETIME,
      upd_date DATETIME
)COMMENT = '店铺商品分类';

DROP TABLE IF EXISTS shop_set;
CREATE TABLE shop_set(
    id INT PRIMARY KEY  AUTO_INCREMENT COMMIT '主键id',
    logoUrl TEXT COMMENT '主页logo图片'
)COMMENT = '店铺基本设置';

DROP TABLE IF EXISTS shop_user;
CREATE TABLE shop_user(
    id INT PRIMARY KEY  AUTO_INCREMENT COMMIT '主键id',
    logoUrl TEXT COMMENT '主页logo图片'
)COMMENT = '店铺用户';

DROP TABLE IF EXISTS shop_album;
CREATE TABLE shop_album(
    id INT PRIMARY KEY  AUTO_INCREMENT COMMIT '主键id',
    album_name VARCHAR(20) COMMENT '相册名称',
    parent_id INT COMMENT '父id',
    album_url TEXT COMMENT '相册封面',
    ins_date DATETIME,
    upd_date DATETIME
)COMMENT = '商家相册';

DROP TABLE IF EXISTS shop_image;
CREATE TABLE shop_image(
    id INT PRIMARY KEY  AUTO_INCREMENT COMMIT '主键id',
    image_url TEXT COMMENT '图片路径',

) COMMENT = '商家图片库';

DROP TABLE IF EXISTS shop_permission;
CREATE TABLE `shop_permission` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `permission_id` varchar(20) NOT NULL COMMENT '权限id',
  `name` varchar(100) NOT NULL COMMENT '权限名称',
  `description` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '权限访问路径',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级权限id',
  `type` int(1) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `order_num` int(3) DEFAULT '0' COMMENT '排序',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` int(1) NOT NULL COMMENT '状态：1有效；2删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) COMMENT = '权限列表';

DROP TABLE IF EXISTS role_permission;
CREATE TABLE `role_permission` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `role_id` varchar(20) NOT NULL COMMENT '角色id',
  `permission_id` varchar(20) NOT NULL COMMENT '权限id',
)COMMENT = '角色权限关系表'

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL,
  `salt` varchar(128) DEFAULT NULL COMMENT '加密盐值',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `sex` int(255) DEFAULT NULL COMMENT '年龄：1男2女',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `status` int(1) NOT NULL COMMENT '用户状态：1有效; 2删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
)







