import 'package:bangsur_project/hotel/hotel_payment.dart';
import 'package:flutter/material.dart';


class HotelDetailGrid extends StatefulWidget {
  final Map<String, dynamic> hotel;
  const HotelDetailGrid({super.key, required this.hotel});

  @override
  State<HotelDetailGrid> createState() => _HotelDetailGridState();
}

class _HotelDetailGridState extends State<HotelDetailGrid> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _jumlahHariController = TextEditingController();
  DateTime? _tanggal;

  @override
  Widget build(BuildContext context) {
    final fasilitas = widget.hotel['fasilitas'] ?? ['WiFi', 'AC', 'TV', 'Sarapan'];

    return Scaffold(
      appBar: AppBar(title: Text('Form Booking Hotel')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(widget.hotel['image'], height: 200, width: double.infinity, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(widget.hotel['nama'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.location_on, color: Colors.red),
                Text(widget.hotel['lokasi']),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Rp ${widget.hotel['hargapermalam'].toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')} / malam',
              style: const TextStyle(fontSize: 16),
            ),
            const Divider(height: 32),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Fasilitas', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: fasilitas.map<Widget>((item) {
                return Chip(
                  label: Text(item),
                  backgroundColor: Colors.grey[200],
                );
              }).toList(),
            ),

            const SizedBox(height: 24),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _namaController,
                    decoration: const InputDecoration(labelText: 'Nama Pemesan'),
                    validator: (val) => val == null || val.isEmpty ? 'Wajib diisi' : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _jumlahHariController,
                    decoration: const InputDecoration(labelText: 'Waktu sewa (contoh: 2 hari)'),
                    keyboardType: TextInputType.number,
                    validator: (val) => val == null || val.isEmpty ? 'Wajib diisi' : null,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Text(_tanggal == null
                            ? 'Pilih Tanggal'
                            : 'Tanggal: ${_tanggal!.toLocal().toString().split(' ')[0]}'),
                      ),
                      TextButton.icon(
                        icon: const Icon(Icons.date_range),
                        label: const Text("Pilih"),
                        onPressed: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2100),
                          );
                          if (picked != null) {
                            setState(() {
                              _tanggal = picked;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate() && _tanggal != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PaymentScreen(
                              hotel: widget.hotel,
                              nama: _namaController.text,
                              jumlahHari: int.parse(_jumlahHariController.text),
                              tanggal: _tanggal!,
                            ),
                          ),
                        );
                      }
                    },
                    icon:  Icon(Icons.payment),
                    label:  Text('Lanjut Pembayaran'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
