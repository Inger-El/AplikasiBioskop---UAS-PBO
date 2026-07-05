-- 1. database 
 CREATE DATABASE IF NOT EXISTS db_bioskop;
 USE db_bioskop;

-- 2. Tabel Users (Untuk Login)
 CREATE TABLE users (
     id_user INT AUTO_INCREMENT PRIMARY KEY,
     username VARCHAR(50),
     password VARCHAR(50)
 );

-- 3. Tabel Film
 CREATE TABLE film (
     id_film INT AUTO_INCREMENT PRIMARY KEY,
     judul_film VARCHAR(100),
     genre VARCHAR(50),
     harga INT
 );

-- 4. Tabel Tiket (Transaksi)
 CREATE TABLE tiket (
    id_tiket INT AUTO_INCREMENT PRIMARY KEY,
     id_film INT,
     nomor_kursi VARCHAR(50), 
     jumlah_tiket INT,
     metode_bayar VARCHAR(20),
     total_harga INT,
     tanggal_transaksi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
     FOREIGN KEY (id_film) REFERENCES film(id_film) ON DELETE CASCADE
 );

-- 5. Tabel Jadwal (Hari dan jam)
CREATE TABLE jadwal (
    id_jadwal INT AUTO_INCREMENT PRIMARY KEY,
    id_film INT,
    hari VARCHAR(20),
    jam VARCHAR(10),
    FOREIGN KEY (id_film) REFERENCES film(id_film)
);

-- 6. Masukin data awal biar gampang ngetesnya nanti
 INSERT INTO users (username, password) VALUES ('admin', 'admin123');
 INSERT INTO film (judul_film, genre, harga) VALUES 
 ('Agak Laen', 'Komedi', 50000), 
 ('Dune: Part Two', 'Sci-Fi', 65000);