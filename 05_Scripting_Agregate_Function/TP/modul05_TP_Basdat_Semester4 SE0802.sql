--=================================================================================
SELECT COUNT(*) AS JUMLAH_FILM
FROM film_103122400044;
--=================================================================================
SELECT COUNT(DISTINCT ID_FILM) AS JUMLAH_FILM_TAYANG
FROM jadwal_103122400044;

--=================================================================================

INSERT INTO transaksi_103122400044 
VALUES ('P20001','MM0111','JT002','IN1001',SYSDATE,'pesan');

INSERT INTO transaksi_103122400044 
VALUES ('P20002','MM0111','JT003','IN1002',SYSDATE,'pesan');


INSERT INTO transaksi_103122400044 
VALUES ('P20003','MM0112','JT001','IN1003',SYSDATE,'pesan');

INSERT INTO transaksi_103122400044 
VALUES ('P20004','MM0112','JT002','IN1004',SYSDATE,'pesan');

INSERT INTO transaksi_103122400044 
VALUES ('P20005','MM0112','JT003','IN1005',SYSDATE,'pesan');


INSERT INTO transaksi_103122400044 
VALUES ('P20006','MM0113','JT001','IN1006',SYSDATE,'pesan');

INSERT INTO transaksi_103122400044 
VALUES ('P20007','MM0113','JT002','IN1007',SYSDATE,'pesan');

INSERT INTO transaksi_103122400044 
VALUES ('P20008','MM0113','JT003','IN1008',SYSDATE,'pesan');

INSERT INTO transaksi_103122400044 
VALUES ('P20009','MM0113','JT004','IN1009',SYSDATE,'pesan');
--=================================================================================

SELECT ID_MEMBER, COUNT(*) AS TOTAL_NONTON
FROM transaksi_103122400044
GROUP BY ID_MEMBER
HAVING COUNT(*) > 2;

--=================================================================================

SELECT m.ID_MEMBER, COUNT(tr.KODE_PEMESANAN) AS JUMLAH_NONTON
FROM member_103122400044 m
JOIN transaksi_103122400044 tr 
ON m.ID_MEMBER = tr.ID_MEMBER
WHERE m.TGL_LAHIR = (
    SELECT MAX(TGL_LAHIR) 
    FROM member_103122400044
)
GROUP BY m.ID_MEMBER;
--=================================================================================
SELECT EXTRACT(MONTH FROM TGL_LAHIR) AS BULAN,
       COUNT(*) AS JUMLAH_MEMBER
FROM member_103122400044
GROUP BY EXTRACT(MONTH FROM TGL_LAHIR)
ORDER BY BULAN;
--=================================================================================
SELECT f.JUDUL, COUNT(j.ID_JADWAL) AS JUMLAH_JADWAL
FROM film_103122400044 f
JOIN jadwal_103122400044 j 
ON f.ID_FILM = j.ID_FILM
WHERE DATE '2019-06-15' BETWEEN j.PERIODE_START AND j.PERIODE_END
GROUP BY f.JUDUL;