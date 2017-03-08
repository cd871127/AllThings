DELIMITER /
CREATE TRIGGER bi_tri_data_dict
BEFORE INSERT
  ON DATA_DICT
FOR EACH ROW
  BEGIN
    SET new.create_date = sysdate(), new.update_date = sysdate();
  END /

CREATE TRIGGER bu_tri_data_dict
BEFORE UPDATE
  ON DATA_DICT
FOR EACH ROW
  BEGIN
    SET new.update_date = sysdate();
  END /
DELIMITER ;