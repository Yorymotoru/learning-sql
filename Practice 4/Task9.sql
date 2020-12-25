ALTER TABLE TEST2
ADD AAA NUMERIC(3);

ALTER TABLE TEST2
MODIFY AAA NUMERIC(5);

ALTER TABLE TEST2
RENAME COLUMN AAA TO BBB;

ALTER TABLE TEST2
DROP COLUMN BBB;

ALTER TABLE TEST2
ADD CONSTRAINT STR UNIQUE(STR);

ALTER TABLE TEST2
DROP CONSTRAINT PARENT_ID;

ALTER TABLE TEST2
ADD CONSTRAINT PARENT_ID
        FOREIGN KEY (ID)
        REFERENCES TEST2 (ID);