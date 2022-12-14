-- BAB 2: SQL dan perintah SELECT
-- Perintah SELECT [2/2]
SELECT  * 
FROM    ms_produk;
-----------------------------END BAB 2-----------------------------

-- BAB 3: Menentukan Kolom dan Jumlah Baris Yang Ditampilkan
-- Mengambil Satu Kolom dari TABLE
SELECT  nama_produk 
FROM    ms_produk

-- Mengambil Lebih dari Satu Kolom
SELECT  nama_produk, 
        harga 
FROM    ms_produk

-- Membatasi Pengambilan Jumlah Row Data
SELECT  nama_produk
FROM    ms_produk
LIMIT   3;
-----------------------------END BAB 3-----------------------------

-- BAB 4: Prefix dan Alias
-- Menggunakan Prefix pada Nama Kolom
SELECT ms_produk.kode_produk FROM ms_produk;

-- Menggunakan Alias pada Kolom
SELECT  no_urut AS nomor, 
        nama_produk AS nama
FROM    ms_produk;

-- Menghilangkan Keyword 'AS'
SELECT  no_urut nomor, 
        nama_produk nama
FROM    ms_produk;


-- Menggabungkan Prefix dan Alias
SELECT  ms_produk.harga AS harga_jual
FROM    ms_produk;

-- Menggunakan Alias pada TABLE
SELECT  *
FROM    ms_produk t2;

-- Prefix dengan Alias TABLE
SELECT  t2.nama_produk, 
        t2.harga
FROM    ms_produk t2;
-----------------------------END BAB 4-----------------------------

-- BAB 5: Menggunakan Filter
-- Menggunakan WHERE
SELECT  *
FROM    ms_produk
WHERE   nama_produk = 'Tas Travel Organizer DQLab';

-- Menggunakan Operand OR
SELECT  *
FROM    ms_produk
WHERE   nama_produk = 'Gantungan Kunci DQLab'
    OR  nama_produk = 'Tas Travel Organizer DQLab'
    OR  nama_produk = 'Flashdisk DQLab 64 GB';

-- Filter untuk Angka
SELECT  *
FROM    ms_produk
WHERE   harga > 50000;

-- Menggunakan Operand AND
SELECT  *
FROM    ms_produk
WHERE   nama_produk = 'Gantungan Kunci DQLab'
    AND harga < 50000;
-----------------------------END BAB 5-----------------------------