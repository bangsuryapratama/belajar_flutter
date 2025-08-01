import 'package:flutter/material.dart';
import 'success_screen.dart';

class PaymentScreen extends StatelessWidget {
  final Map<String, dynamic> product;
  final int quantity;
  final Map<String, String> userData;

  PaymentScreen({required this.product, required this.quantity, required this.userData});

  @override
  Widget build(BuildContext context) {
    int total = product['price'] * quantity;

    return Scaffold(
      appBar: AppBar(title: Text("Pembayaran")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Nama: ${userData['name']}"),
            Text("Produk: ${product['name']}"),
            Text("Jumlah: $quantity"),
            Text("Total Bayar: Rp $total"),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Bayar Sekarang"),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (_) => SuccessScreen(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
