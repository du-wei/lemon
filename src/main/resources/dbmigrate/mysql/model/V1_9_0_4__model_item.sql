

-------------------------------------------------------------------------------
--  model item
-------------------------------------------------------------------------------
CREATE TABLE MODEL_ITEM(
        ID BIGINT AUTO_INCREMENT,
	CODE VARCHAR(50),
	VALUE VARCHAR(200),
	TYPE VARCHAR(50),
	SCHEMA_ID BIGINT,
	BASE_ID BIGINT,
	TENANT_ID VARCHAR(64),
	CONSTRAINT PK_MODEL_ITEM PRIMARY KEY(ID),
        CONSTRAINT FK_MODEL_ITEM_SCHEMA FOREIGN KEY(SCHEMA_ID) REFERENCES MODEL_SCHEMA(ID),
        CONSTRAINT FK_MODEL_ITEM_BASE FOREIGN KEY(BASE_ID) REFERENCES MODEL_BASE(ID)
) ENGINE=INNODB CHARSET=UTF8;

