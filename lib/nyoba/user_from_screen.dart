import 'package:flutter/material.dart';
import 'payment_screen.dart';

class UserFormScreen extends StatefulWidget {
  final Map<String, dynamic> product;
  final int quantity;

  UserFormScreen({required this.product, required this.quantity});

  @override
  _UserFormScreenState createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = '', address = '', email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Diri')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: 'Nama'), onSaved: (val) => name = val!),
              TextFormField(decoration: InputDecoration(labelText: 'Alamat'), onSaved: (val) => address = val!),
              TextFormField(decoration: InputDecoration(labelText: 'Email'), onSaved: (val) => email = val!),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Lanjut ke Pembayaran"),
                onPressed: () {
                  _formKey.currentState!.save();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) => PaymentScreen(
                      product: widget.product,
                      quantity: widget.quantity,
                      userData: {'name': name, 'address': address, 'email': email},
                    ),
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
