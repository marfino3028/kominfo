
use apotik_dewi
SELECT	Produk.Nama,
		Pelanggan.Nama,
		Beli.Jumlah,
		Beli.total,
		IIF(total > 150000, '25%','10%') AS Diskon,
		Pajak = total * 2/100,
		Bayar_akhir = total - Diskon - Pajak,
		IIF(total > 150000, 'HandSanitizer','Masker') AS Bonus

FROM Beli
LEFT JOIN Produk ON Beli.Kdproduk=Produk.Kdproduk
LEFT JOIN Pelanggan ON Beli.Kdplnggn=Pelanggan.Kdplnggn
WHERE Pelanggan.Nama = 'Maria'
