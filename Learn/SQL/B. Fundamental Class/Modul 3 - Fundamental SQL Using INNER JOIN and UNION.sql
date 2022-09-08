-- BAB 1: Penggabungan Tabel dari Relasi Kolom
-- Tugas Praktek Tabel
SELECT  * 
FROM    ms_item_kategori;

SELECT  * 
FROM    ms_item_warna;

-- Menggabungkan Tabel dengan Key Columns
SELECT  * 
FROM    ms_item_kategori, 
        ms_item_warna
WHERE   nama_barang = nama_item;

-- Bagaimana jika urutan Tabel diubah?
SELECT  * 
FROM    ms_item_warna, 
        ms_item_kategori
WHERE   nama_barang = nama_item;

-- Menggunakan Prefix Nama Tabel
SELECT  ms_item_kategori.*, 
        ms_item_warna.*
FROM    ms_item_warna, 
        ms_item_kategori
WHERE   nama_barang = nama_item;

-- Penggabungan Tanpa Kondisi
SELECT  * 
FROM    ms_item_kategori, 
        ms_item_warna;
-----------------------------END BAB 1-----------------------------

-- BAB 2: INNER JOIN
-- Tugas Praktek: Menggunakan INNER JOIN (1/3)
SELECT      * 
FROM        ms_item_warna
INNER JOIN  ms_item_kategori
    ON      ms_item_warna.nama_barang = ms_item_kategori.nama_item;

-- tabel tr_penjualan dan tabel ms_produk
SELECT  * 
FROM    tr_penjualan;

SELECT  * 
FROM    ms_produk;

-- Tugas Praktek: Menggunakan INNER JOIN (2/3)
SELECT      * 
FROM        tr_penjualan 
INNER JOIN  ms_produk 
    ON      tr_penjualan.kode_produk = ms_produk.kode_produk

-- Tugas Praktek: Menggunakan INNER JOIN (3/3)
SELECT      tr_penjualan.kode_transaksi, 
            tr_penjualan.kode_pelanggan, 
            tr_penjualan.kode_produk, 
            ms_produk.nama_produk, 
            ms_produk.harga, 
            tr_penjualan.qty, 
            ms_produk.harga*tr_penjualan.qty AS total
FROM        tr_penjualan
INNER JOIN  ms_produk
    ON      tr_penjualan.kode_produk = ms_produk.kode_produk;
-----------------------------END BAB 2-----------------------------

-- BAB 3: UNION
-- Tabel yang Akan Digabungkan
SELECT  * 
FROM    tabel_A;

SELECT  * 
FROM    tabel_B;

-- Menggunakan UNION
SELECT  * 
FROM    tabel_a
UNION
SELECT  * 
FROM    tabel_b

-- Menggunakan UNION dengan Klausa WHERE
SELECT  * 
FROM    tabel_a
WHERE   kode_pelanggan = 'dqlabcust03'
UNION
SELECT  * 
FROM    tabel_b
WHERE   kode_pelanggan = 'dqlabcust03';

-- Menggunakan UNION dan Menyelaraskan Kolom-Kolomnya
SELECT  customername, 
        contactname, 
        city, 
        postalcode
FROM    customers
UNION
SELECT  suppliername, 
        contactname, 
        city, 
        postalcode
FROM    suppliers;
-----------------------------END BAB 3-----------------------------

-- BAB 4: Mini Project
-- Project INNER JOIN
SELECT      DISTINCT mp.kode_pelanggan, 
            nama_customer, 
            alamat
FROM        ms_pelanggan mp
INNER JOIN  tr_penjualan tp
    ON      mp.kode_pelanggan = tp.kode_pelanggan
WHERE       nama_produk IN ('Kotak Pensil DQLab', 'Flashdisk DQLab 32 GB', 'Sticky Notes DQLab 500 sheets')

-- Project UNION
SELECT  nama_produk,
        kode_produk, 
        harga
FROM    ms_produk_1
WHERE   harga < 100000
UNION 
SELECT  nama_produk,
        kode_produk, 
        harga
FROM    ms_produk_2
WHERE   harga < 50000
-----------------------------END BAB 4-----------------------------