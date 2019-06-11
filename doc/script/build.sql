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





