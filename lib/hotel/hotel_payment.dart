import 'package:bangsur_project/hotel/hotel_makasi.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  final Map<String, dynamic> hotel;
  final String nama;
  final int jumlahHari;
  final DateTime tanggal;

  const PaymentScreen({
    super.key,
    required this.hotel,
    required this.nama,
    required this.jumlahHari,
    required this.tanggal,
  });

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController _paymentController = TextEditingController();
  String? _message;

  int get totalBayar => widget.hotel['hargapermalam'] * widget.jumlahHari;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pembayaran")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama Pemesan: ${widget.nama}"),
            Text("Hotel: ${widget.hotel['nama']}"),
            Text("Jumlah Kamar: ${widget.jumlahHari}"),
            Text("Tanggal: ${widget.tanggal.toLocal().toString().split(' ')[0]}"),
            const SizedBox(height: 16),
            Text(
              "Total Harga: Rp ${totalBayar.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]}.')}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _paymentController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Masukkan Jumlah Uang Anda",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final bayar = int.tryParse(_paymentController.text) ?? 0;

                if (bayar < totalBayar) {
                  setState(() {
                    _message = "Uang tidak cukup. Silakan bayar minimal Rp $totalBayar.";
                  });
                } else {
                  final kembalian = bayar - totalBayar;

                  // Navigasi ke halaman terima kasih
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ThanksScreen(
                        nama: widget.nama,
                        hotel: widget.hotel,
                        jumlah: widget.jumlahHari,
                        tanggal: widget.tanggal,
                        kembalian: kembalian,
                      ),
                    ),
                  );
                }
              },
              child: const Text("Bayar Sekarang"),
            ),
            const SizedBox(height: 16),
            if (_message != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _message!.contains("berhasil") ? Colors.green[100] : Colors.red[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  _message!,
                  style: TextStyle(
                    color: _message!.contains("berhasil") ? Colors.green[800] : Colors.red[800],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
