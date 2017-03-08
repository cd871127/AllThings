DELIMITER /
CREATE TRIGGER bi_tri_account_info
BEFORE INSERT
  ON ACCOUNT_INFO
FOR EACH ROW
  BEGIN
    SET new.create_date = sysdate(), new.update_date = sysdate();
  END /

CREATE TRIGGER bu_tri_account_info
BEFORE UPDATE
  ON ACCOUNT_INFO
FOR EACH ROW
  BEGIN
    SET new.update_date = sysdate();
  END /
DELIMITER ;