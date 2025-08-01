import 'package:bangsur_project/nyoba/user_from_screen.dart';
import 'package:flutter/material.dart';


class ProductDetailScreen extends StatefulWidget {
  final Map<String, dynamic> product;

  ProductDetailScreen({required this.product});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.product['name'])),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    widget.product['image'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Harga: Rp ${widget.product['price']}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                children: [
                  Text("Jumlah: ", style: TextStyle(fontSize: 16)),
                  IconButton(icon: Icon(Icons.remove), onPressed: () {
                    if (quantity > 1) setState(() => quantity--);
                  }),
                  Text('$quantity', style: TextStyle(fontSize: 16)),
                  IconButton(icon: Icon(Icons.add), onPressed: () {
                    setState(() => quantity++);
                  }),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text("Isi Data Diri"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) => UserFormScreen(
                      product: widget.product,
                      quantity: quantity,
                    ),
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
