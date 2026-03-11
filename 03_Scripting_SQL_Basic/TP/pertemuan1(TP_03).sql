SQL> --Nama:Hafizh Arqamilandri Wakhyudi
SQL> --NIM:103122400044
SQL> desc mahasiswa
ERROR:
ORA-04043: object mahasiswa does not exist 


SQL> CREATE TABLE mahasiswa (
  2      id          NUMBER(3) PRIMARY KEY,
  3      nama        VARCHAR2(50) NOT NULL,
  4      tmp_lahir   VARCHAR2(30),
  5      tgl_lahir   DATE NOT NULL,
  6      no_hp       VARCHAR2(15),
  7      email       VARCHAR2(50),
  8      tinggi      NUMBER(5,2),
  9      berat       NUMBER(5,2)
 10  );

Table created.

SQL> desc mahasiswa;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(3)
 NAMA                                      NOT NULL VARCHAR2(50)
 TMP_LAHIR                                          VARCHAR2(30)
 TGL_LAHIR                                 NOT NULL DATE
 NO_HP                                              VARCHAR2(15)
 EMAIL                                              VARCHAR2(50)
 TINGGI                                             NUMBER(5,2)
 BERAT                                              NUMBER(5,2)



SQL> INSERT ALL
  2      INTO mahasiswa VALUES (1, 'BUDI SANTOSO', 'Jakarta', TO_DATE('12-05-2002','DD-MM-YYYY'), '081234567890', 'budi@email.com', 170.5, 65)
  3      INTO mahasiswa VALUES (2, 'ani wijaya', 'Bandung', TO_DATE('20-08-2003','DD-MM-YYYY'), '085712345678', 'ani@email.com', 160.0, 50.5)
  4      INTO mahasiswa VALUES (3, 'Citra Lestari', 'Surabaya', TO_DATE('15-01-2001','DD-MM-YYYY'), '081399887766', 'citra@email.com', 165.2, 55)
  5      INTO mahasiswa VALUES (4, 'dedi kurniawan', 'Medan', TO_DATE('05-12-2002','DD-MM-YYYY'), '081122334455', 'dedi@email.com', 175.0, 80)
  6      INTO mahasiswa VALUES (5, 'Eka Putri', 'Jogja', TO_DATE('30-03-2003','DD-MM-YYYY'), '082233445566', 'eka@email.com', 158.5, 48)
  7      INTO mahasiswa VALUES (6, 'Fajar Sidik', 'Semarang', TO_DATE('11-07-2001','DD-MM-YYYY'), '089988776655', 'fajar@email.com', 180.0, 75.2)
  8      INTO mahasiswa VALUES (7, 'Gita Permata', 'Bali', TO_DATE('22-09-2002','DD-MM-YYYY'), '087711223344', 'gita@email.com', 162.0, 52)
  9      INTO mahasiswa VALUES (8, 'HADI PRASETYO', 'Malang', TO_DATE('09-02-2000','DD-MM-YYYY'), '081233445577', 'hadi@email.com', 168.0, 70)
 10      INTO mahasiswa VALUES (9, 'Indah Sari', 'Solo', TO_DATE('18-06-2001','DD-MM-YYYY'), '085211223344', 'indah@email.com', 155.0, 45.8)
 11      INTO mahasiswa VALUES (10, 'Joko Susilo', 'Palembang', TO_DATE('25-10-2002','DD-MM-YYYY'), '081311223344', 'joko@email.com', 172.5, 68)
 12      INTO mahasiswa VALUES (11, 'Kartika', 'Makassar', TO_DATE('03-04-2003','DD-MM-YYYY'), '081199887744', 'kartika@email.com', 160.0, 58)
 13      INTO mahasiswa VALUES (12, 'Lutfi Hakim', 'Aceh', TO_DATE('14-11-2001','DD-MM-YYYY'), '081288776655', 'lutfi@email.com', 178.0, 85)
 14      INTO mahasiswa VALUES (13, 'Maya Ahmad', 'Padang', TO_DATE('27-08-2002','DD-MM-YYYY'), '085733445566', 'maya@email.com', 157.0, 50)
 15      INTO mahasiswa VALUES (14, 'Naufal', 'Balikpapan', TO_DATE('19-01-2003','DD-MM-YYYY'), '081322334455', 'naufal@email.com', 170.0, 62.5)
 16      INTO mahasiswa VALUES (15, 'Olivia', 'Manado', TO_DATE('08-05-2001','DD-MM-YYYY'), '082255443322', 'olivia@email.com', 163.4, 54)
 17  SELECT * FROM dual;

15 rows created.

SQL> SELECT * FROM mahasiswa;

        ID NAMA                                                                 
---------- --------------------------------------------------                   
TMP_LAHIR                      TGL_LAHIR NO_HP                                  
------------------------------ --------- ---------------                        
EMAIL                                                  TINGGI      BERAT        
-------------------------------------------------- ---------- ----------        
         1 BUDI SANTOSO                                                         
Jakarta                        12-MAY-02 081234567890                           
budi@email.com                                          170.5         65        
                                                                                
         2 ani wijaya                                                           
Bandung                        20-AUG-03 085712345678                           
ani@email.com                                             160       50.5        

        ID NAMA                                                                 
---------- --------------------------------------------------                   
TMP_LAHIR                      TGL_LAHIR NO_HP                                  
------------------------------ --------- ---------------                        
EMAIL                                                  TINGGI      BERAT        
-------------------------------------------------- ---------- ----------        
                                                                                
         3 Citra Lestari                                                        
Surabaya                       15-JAN-01 081399887766                           
citra@email.com                                         165.2         55        
                                                                                
         4 dedi kurniawan                                                       
Medan                          05-DEC-02 081122334455                           

        ID NAMA                                                                 
---------- --------------------------------------------------                   
TMP_LAHIR                      TGL_LAHIR NO_HP                                  
------------------------------ --------- ---------------                        
EMAIL                                                  TINGGI      BERAT        
-------------------------------------------------- ---------- ----------        
dedi@email.com                                            175         80        
                                                                                
         5 Eka Putri                                                            
Jogja                          30-MAR-03 082233445566                           
eka@email.com                                           158.5         48        
                                                                                
         6 Fajar Sidik                                                          

        ID NAMA                                                                 
---------- --------------------------------------------------                   
TMP_LAHIR                      TGL_LAHIR NO_HP                                  
------------------------------ --------- ---------------                        
EMAIL                                                  TINGGI      BERAT        
-------------------------------------------------- ---------- ----------        
Semarang                       11-JUL-01 089988776655                           
fajar@email.com                                           180       75.2        
                                                                                
         7 Gita Permata                                                         
Bali                           22-SEP-02 087711223344                           
gita@email.com                                            162         52        
                                                                                

        ID NAMA                                                                 
---------- --------------------------------------------------                   
TMP_LAHIR                      TGL_LAHIR NO_HP                                  
------------------------------ --------- ---------------                        
EMAIL                                                  TINGGI      BERAT        
-------------------------------------------------- ---------- ----------        
         8 HADI PRASETYO                                                        
Malang                         09-FEB-00 081233445577                           
hadi@email.com                                            168         70        
                                                                                
         9 Indah Sari                                                           
Solo                           18-JUN-01 085211223344                           
indah@email.com                                           155       45.8        

        ID NAMA                                                                 
---------- --------------------------------------------------                   
TMP_LAHIR                      TGL_LAHIR NO_HP                                  
------------------------------ --------- ---------------                        
EMAIL                                                  TINGGI      BERAT        
-------------------------------------------------- ---------- ----------        
                                                                                
        10 Joko Susilo                                                          
Palembang                      25-OCT-02 081311223344                           
joko@email.com                                          172.5         68        
                                                                                
        11 Kartika                                                              
Makassar                       03-APR-03 081199887744                           

        ID NAMA                                                                 
---------- --------------------------------------------------                   
TMP_LAHIR                      TGL_LAHIR NO_HP                                  
------------------------------ --------- ---------------                        
EMAIL                                                  TINGGI      BERAT        
-------------------------------------------------- ---------- ----------        
kartika@email.com                                         160         58        
                                                                                
        12 Lutfi Hakim                                                          
Aceh                           14-NOV-01 081288776655                           
lutfi@email.com                                           178         85        
                                                                                
        13 Maya Ahmad                                                           

        ID NAMA                                                                 
---------- --------------------------------------------------                   
TMP_LAHIR                      TGL_LAHIR NO_HP                                  
------------------------------ --------- ---------------                        
EMAIL                                                  TINGGI      BERAT        
-------------------------------------------------- ---------- ----------        
Padang                         27-AUG-02 085733445566                           
maya@email.com                                            157         50        
                                                                                
        14 Naufal                                                               
Balikpapan                     19-JAN-03 081322334455                           
naufal@email.com                                          170       62.5        
                                                                                

        ID NAMA                                                                 
---------- --------------------------------------------------                   
TMP_LAHIR                      TGL_LAHIR NO_HP                                  
------------------------------ --------- ---------------                        
EMAIL                                                  TINGGI      BERAT        
-------------------------------------------------- ---------- ----------        
        15 Olivia                                                               
Manado                         08-MAY-01 082255443322                           
olivia@email.com                                        163.4         54        
                                                                                

15 rows selected.

SQL> SELECT
  2      UPPER(nama) as Kapital,
  3      LOWER(nama) as Kecil,
  4      INITCAP(nama) as Judul,
  5      LENGTH(nama) as Panjang_Nama,
  6      SUBSTR(nama, 1, 4) as Potong_4,
  7      REPLACE(email, 'email.com', 'itb.ac.id') as Ganti_Domain
  8  FROM mahasiswa WHERE id <= 5;

KAPITAL                                                                         
--------------------------------------------------                              
KECIL                                                                           
--------------------------------------------------                              
JUDUL                                              PANJANG_NAMA POTONG_4        
-------------------------------------------------- ------------ ----------------
GANTI_DOMAIN                                                                    
--------------------------------------------------------------------------------
BUDI SANTOSO                                                                    
budi santoso                                                                    
Budi Santoso                                                 12 BUDI            
budi@itb.ac.id                                                                  
                                                                                

KAPITAL                                                                         
--------------------------------------------------                              
KECIL                                                                           
--------------------------------------------------                              
JUDUL                                              PANJANG_NAMA POTONG_4        
-------------------------------------------------- ------------ ----------------
GANTI_DOMAIN                                                                    
--------------------------------------------------------------------------------
ANI WIJAYA                                                                      
ani wijaya                                                                      
Ani Wijaya                                                   10 ani             
ani@itb.ac.id                                                                   
                                                                                

KAPITAL                                                                         
--------------------------------------------------                              
KECIL                                                                           
--------------------------------------------------                              
JUDUL                                              PANJANG_NAMA POTONG_4        
-------------------------------------------------- ------------ ----------------
GANTI_DOMAIN                                                                    
--------------------------------------------------------------------------------
CITRA LESTARI                                                                   
citra lestari                                                                   
Citra Lestari                                                13 Citr            
citra@itb.ac.id                                                                 
                                                                                

KAPITAL                                                                         
--------------------------------------------------                              
KECIL                                                                           
--------------------------------------------------                              
JUDUL                                              PANJANG_NAMA POTONG_4        
-------------------------------------------------- ------------ ----------------
GANTI_DOMAIN                                                                    
--------------------------------------------------------------------------------
DEDI KURNIAWAN                                                                  
dedi kurniawan                                                                  
Dedi Kurniawan                                               14 dedi            
dedi@itb.ac.id                                                                  
                                                                                

KAPITAL                                                                         
--------------------------------------------------                              
KECIL                                                                           
--------------------------------------------------                              
JUDUL                                              PANJANG_NAMA POTONG_4        
-------------------------------------------------- ------------ ----------------
GANTI_DOMAIN                                                                    
--------------------------------------------------------------------------------
EKA PUTRI                                                                       
eka putri                                                                       
Eka Putri                                                     9 Eka             
eka@itb.ac.id                                                                   
                                                                                

SQL> SELECT
  2      nama,
  3      TO_CHAR(tgl_lahir, 'DD MONTH YYYY') as Tgl_Lengkap,
  4      MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12 as Umur_Tahun,
  5      LAST_DAY(tgl_lahir) as Akhir_Bulan_Lahir
  6  FROM mahasiswa WHERE id <= 5;

NAMA                                                                            
--------------------------------------------------                              
TGL_LENGKAP                                  UMUR_TAHUN AKHIR_BUL               
-------------------------------------------- ---------- ---------               
BUDI SANTOSO                                                                    
12 MAY       2002                            23.8329531 31-MAY-02               
                                                                                
ani wijaya                                                                      
20 AUGUST    2003                            22.5614478 31-AUG-03               
                                                                                
Citra Lestari                                                                   
15 JANUARY   2001                            25.1582219 31-JAN-01               
                                                                                

NAMA                                                                            
--------------------------------------------------                              
TGL_LENGKAP                                  UMUR_TAHUN AKHIR_BUL               
-------------------------------------------- ---------- ---------               
dedi kurniawan                                                                  
05 DECEMBER  2002                             23.268437 31-DEC-02               
                                                                                
Eka Putri                                                                       
30 MARCH     2003                            22.9512327 31-MAR-03               
                                                                                

SQL> SELECT
  2      nama,
  3      ROUND(tinggi) as Tinggi_Bulat,
  4      CEIL(berat) as Berat_Keatas,
  5      MOD(id, 2) as Cek_Ganjil_Genap
  6  FROM mahasiswa WHERE id <= 5;

NAMA                                               TINGGI_BULAT BERAT_KEATAS    
-------------------------------------------------- ------------ ------------    
CEK_GANJIL_GENAP                                                                
----------------                                                                
BUDI SANTOSO                                                171           65    
               1                                                                
                                                                                
ani wijaya                                                  160           51    
               0                                                                
                                                                                
Citra Lestari                                               165           55    
               1                                                                
                                                                                

NAMA                                               TINGGI_BULAT BERAT_KEATAS    
-------------------------------------------------- ------------ ------------    
CEK_GANJIL_GENAP                                                                
----------------                                                                
dedi kurniawan                                              175           80    
               0                                                                
                                                                                
Eka Putri                                                   159           48    
               1                                                                
                                                                                

SQL> SELECT
  2      nama,
  3      CONCAT(TO_CHAR(tinggi_badan, '999.9'), ' cm') AS Tinggi_Teks,
  4      TO_CHAR(tanggal_lahir, 'Day') AS Hari_Lahir
  5  FROM mahasiswa
  6  WHERE id <= 5;
    TO_CHAR(tanggal_lahir, 'Day') AS Hari_Lahir
            *
ERROR at line 4:
ORA-00904: "TANGGAL_LAHIR": invalid identifier 


SQL> desc mahasiswa
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(3)
 NAMA                                      NOT NULL VARCHAR2(50)
 TMP_LAHIR                                          VARCHAR2(30)
 TGL_LAHIR                                 NOT NULL DATE
 NO_HP                                              VARCHAR2(15)
 EMAIL                                              VARCHAR2(50)
 TINGGI                                             NUMBER(5,2)
 BERAT                                              NUMBER(5,2)

SQL> SELECT
  2      nama,
  3      CONCAT(TO_CHAR(tinggi, '999.9'), ' cm') AS Tinggi_Teks,
  4      TO_CHAR(tgl_lahir, 'Day') AS Hari_Lahir
  5  FROM mahasiswa
  6  WHERE id <= 5;

NAMA                                               TINGGI_TE                    
-------------------------------------------------- ---------                    
HARI_LAHIR                                                                      
------------------------------------                                            
BUDI SANTOSO                                        170.5 cm                    
Sunday                                                                          
                                                                                
ani wijaya                                          160.0 cm                    
Wednesday                                                                       
                                                                                
Citra Lestari                                       165.2 cm                    
Monday                                                                          
                                                                                

NAMA                                               TINGGI_TE                    
-------------------------------------------------- ---------                    
HARI_LAHIR                                                                      
------------------------------------                                            
dedi kurniawan                                      175.0 cm                    
Thursday                                                                        
                                                                                
Eka Putri                                           158.5 cm                    
Sunday                                                                          
                                                                                

SQL> SPOOL OFF
