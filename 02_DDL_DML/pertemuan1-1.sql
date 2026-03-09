SQL> --Nama:HafizhArqamilandriWakhyudi
SQL> --NIM:103122400044
SQL> Desc kategori_buah
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_KATEGORI                               NOT NULL CHAR(5)
 KATEGORI                                           VARCHAR2(60)

SQL> INSERT INTO kategori_buah (ID_KATEGORI,KATEGORI) VALUES ('D3333','Berbiji1');

1 row created.

SQL> UPDATE kategori_buah SET KATEGORI='tidak berbiji' WHERE ID_KATEGORI='D3333';

1 row updated.

SQL> SELECT*FROM kategori_buah;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
D11   ApelPagi                                                                  
D1111 tidak berbiji                                                             
D22   RambuLantas                                                               
D3333 tidak berbiji                                                             

SQL> DELETE FROM Kategori_buah Where ID_kategori='D3333';

1 row deleted.

SQL> SELECT*FROM kategori_buah;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
D11   ApelPagi                                                                  
D1111 tidak berbiji                                                             
D22   RambuLantas                                                               

SQL> DELETE FROM Kategori_buah Where ID_kategori='D22';

1 row deleted.

SQL> DELETE FROM Kategori_buah Where ID_kategori='D11';

1 row deleted.

SQL> SELECT*FROM kategori_buah;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
D1111 tidak berbiji                                                             

SQL> CREATE TABLE buah (ID_buah Char(3) NOT NULL ENABLE CONSTRAINT pk_buah PRIMARY KEY, Nama_buah VARCHAR(60));

Table created.

SQL> SQL> INSERT INTO buah Values ('D111','ApelPagi');
SP2-0734: unknown command beginning "SQL> INSER..." - rest of line ignored.
SQL> INSERT INTO buah Values ('D111','ApelPagi');
INSERT INTO buah Values ('D111','ApelPagi')
                         *
ERROR at line 1:
ORA-12899: value too large for column "SYSTEM"."BUAH"."ID_BUAH" (actual: 4, 
maximum: 3) 


SQL> INSERT INTO buah Values ('B11','ApelPagi');

1 row created.

SQL> INSERT INTO buah Values ('B22','RambuLantas');

1 row created.

SQL> SELECT*FROM buah;

ID_ NAMA_BUAH                                                                   
--- ------------------------------------------------------------                
B11 ApelPagi                                                                    
B22 RambuLantas                                                                 



SQL> MERGE INTO kategori_buah k
  2  USING (SELECT id_kategori, nama_buah FROM buah) b
  3  ON (b.id_kategori = k.id_kategori)
  4  WHEN MATCHED THEN
  5  UPDATE SET k.kategori = b.nama_buah
  6  WHEN NOT MATCHED THEN
  7  INSERT (id_kategori, kategori)
  8  VALUES (b.id_kategori, b.nama_buah);
USING (SELECT id_kategori, nama_buah FROM buah) b
              *
ERROR at line 2:
ORA-00904: "ID_KATEGORI": invalid identifier 


SQL> SELECT * FROM kategori_buah;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
D1111 tidak berbiji                                                             

SQL> SELECT * FROM buah;

ID_ NAMA_BUAH                                                                   
--- ------------------------------------------------------------                
B11 ApelPagi                                                                    
B22 RambuLantas                                                                 

SQL> ALTER TABLE buah
  2  RENAME COLUMN ID_buah to ID_Kategori;

Table altered.

SQL> MERGE INTO kategori_buah k
  2  USING (SELECT id_kategori, nama_buah FROM buah) b
  3  ON (b.id_kategori = k.id_kategori)
  4  WHEN MATCHED THEN
  5  UPDATE SET k.kategori = b.nama_buah
  6  WHEN NOT MATCHED THEN
  7  INSERT (id_kategori, kategori)
  8  VALUES (b.id_kategori, b.nama_buah);

2 rows merged.

SQL> select*from buah;

ID_ NAMA_BUAH                                                                   
--- ------------------------------------------------------------                
B11 ApelPagi                                                                    
B22 RambuLantas                                                                 

SQL> select*from kategori_buah
  2  ;

ID_KA KATEGORI                                                                  
----- ------------------------------------------------------------              
B11   ApelPagi                                                                  
D1111 tidak berbiji                                                             
B22   RambuLantas                                                               

SQL> ALTER buah
  2  ;
ALTER buah
      *
ERROR at line 1:
ORA-00940: invalid ALTER command 


SQL> ALTER Table buah
  2  ADD harga NUMBER;

Table altered.

SQL> UPDATE buah SET harga='9000' Where ID_kategori='B11';

1 row updated.

SQL> UPDATE buah SET harga='15000' Where ID_kategori='B22';

1 row updated.

SQL> SELECT * FROM buah
  2  ;

ID_ NAMA_BUAH                                                         HARGA     
--- ------------------------------------------------------------ ----------     
B11 ApelPagi                                                           9000     
B22 RambuLantas                                                       15000     


SQL> CREATE VIEW buahLowToHigh AS
  2      SELECT ID_kategori,Nama_Buah,harga
  3      From buah
  4      where harga>10000;

View created.

SQL> CREATE MATERIALIZED VIEW buah_MV AS
  2      (SELECT ID_kategori,Nama_Buah,harga
  3      From buah
  4  ;

*
ERROR at line 4:
ORA-00907: missing right parenthesis 


SQL> SELECT*from buahlowtohigh
  2  ;

ID_ NAMA_BUAH                                                         HARGA     
--- ------------------------------------------------------------ ----------     
B22 RambuLantas                                                       15000     

SQL> CREATE MATERIALIZED VIEW buah_MV AS
  2      (SELECT ID_kategori,Nama_Buah,harga
  3      From buah
  4      where harga>10000);

Materialized view created.

SQL> SELECT*FROM buah_MV;

ID_ NAMA_BUAH                                                         HARGA     
--- ------------------------------------------------------------ ----------     
B22 RambuLantas                                                       15000     

SQL> 	SPOOL OFF
