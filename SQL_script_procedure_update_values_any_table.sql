//This procedure update table t_name (pass as a parameter) by replacing Null values with empty strings.

PROCEDURE `PROC_REPLACE_NULL`(IN t_name CHAR(20))
	
BEGIN
	SET @table = t_name;    
    
		SET @upd1 = CONCAT('UPDATE ', @table, ' SET snippet = \'\' WHERE snippet is Null');
    
		PREPARE upd11 FROM @upd1;
    
		EXECUTE upd11;
    
		DEALLOCATE PREPARE upd11;
    
    
		SET @upd2 = CONCAT('UPDATE ', @table, ' SET lead_paragraph = \'\' WHERE lead_paragraph is Null');
    
		PREPARE upd22 FROM @upd2;
    
		EXECUTE upd22;
    
		DEALLOCATE PREPARE upd22;
    
    
		SET @upd3 = CONCAT('UPDATE ', @table, ' SET abstract = \'\' WHERE abstract is Null');
    
		PREPARE upd33 FROM @upd3;
    
		EXECUTE upd33;
    
		DEALLOCATE PREPARE upd33;
	
END