USE stock_data;

ALTER TABLE tindex_change ADD SP_Result VarChar(10);

SET SQL_SAFE_UPDATES = 0;
UPDATE tindex_change SET SP_Result = "Bullish"  WHERE SP >= 0;
UPDATE tindex_change SET SP_Result = "Bearish"  WHERE SP < 0;

ALTER TABLE tindex_change DROP SP;

SELECT COUNT(*) FROM tindex_change;

