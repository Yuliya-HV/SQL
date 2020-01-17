FUNCTION `WORD_COUNT`(str TEXT) 
RETURNS int(11)

BEGIN
         
	DECLARE wordCnt, idx, maxIdx INT DEFAULT 0;
         	
	DECLARE currChar, prevChar BOOL DEFAULT 0;
         
	SET maxIdx=char_length(str);
         
	WHILE idx < maxIdx DO
             
		SET currChar=SUBSTRING(str, idx, 1) RLIKE '[[:alnum:]]';
             
		IF NOT prevChar AND currChar THEN
                 
			SET wordCnt=wordCnt+1;
             
		END IF;
             
		SET prevChar=currChar;
             
		SET idx=idx+1;
         
	END WHILE;
         
	RETURN wordCnt;

END