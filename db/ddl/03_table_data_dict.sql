CREATE TABLE DATA_DICT
(
  id          INT UNSIGNED           NOT NULL PRIMARY KEY AUTO_INCREMENT,
  table_name  VARCHAR(32)            NOT NULL,
  column_name VARCHAR(32)            NOT NULL,
  column_code VARCHAR(2)             NOT NULL,
  column_desc VARCHAR(64)            NOT NULL,
  create_date      DATETIME,
  update_date      DATETIME,
  data_state  VARCHAR(2) DEFAULT '1' NOT NULL
)
  AUTO_INCREMENT = 1;