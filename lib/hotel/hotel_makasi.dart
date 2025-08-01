import 'package:flutter/material.dart';

class ThanksScreen extends StatelessWidget {
  final String nama;
  final Map<String, dynamic> hotel;
  final int jumlah;
  final DateTime tanggal;
  final int kembalian;

  const ThanksScreen({
    super.key,
    required this.nama,
    required this.hotel,
    required this.jumlah,
    required this.tanggal,
    required this.kembalian,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Terima Kasih")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Pemesanan Berhasil!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 16),
            Text("Nama: $nama"),
            Text("Hotel: ${hotel['nama']}"),
            Text("Jumlah Kamar: $jumlah"),
            Text("Tanggal: ${tanggal.toLocal().toString().split(' ')[0]}"),
            Text("Kembalian: Rp $kembalian"),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                icon: const Icon(Icons.home),
                label: const Text("Kembali ke Beranda"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
