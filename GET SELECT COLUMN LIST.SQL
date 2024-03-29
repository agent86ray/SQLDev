-- GET_SELECT_COLUMN_LIST
--
-- Set results to text
-- select all columns; order columns alphabetically
DECLARE 
	@TABLE_NAME		VARCHAR(50) = 'tablenamegoeshere'
,	@TABLE_SCHEMA	VARCHAR(50) = 'schemanamegoeshere';
		

SELECT ', ' + COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = @TABLE_SCHEMA
AND TABLE_NAME = @TABLE_NAME
ORDER BY COLUMN_NAME  -- COLUMN_NAME | ORDINAL_POSITION
