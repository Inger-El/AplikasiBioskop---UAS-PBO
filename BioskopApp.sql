-- Nambahin harga tiket di tabel film (misal default 50 ribu)
ALTER TABLE film ADD harga INT DEFAULT 50000;

-- Rombak ulang tabel tiket biar lengkap sesuai request lo
DROP TABLE IF EXISTS tiket;
CREATE TABLE tiket (
    id_tiket INT AUTO_INCREMENT PRIMARY KEY,
    id_film INT,
    nomor_kursi VARCHAR(50), 
    jumlah_tiket INT,
    metode_bayar VARCHAR(20),
    total_harga INT,
    tanggal_transaksi TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);