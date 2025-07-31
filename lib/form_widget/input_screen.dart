import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:bangsur_project/form_widget/output_screen.dart';
import 'package:bangsur_project/main_layout.dart';

class InputFormScreen extends StatefulWidget {
  const InputFormScreen({super.key});

  @override
  State<InputFormScreen> createState() => _InputFormScreenState();
}

class _InputFormScreenState extends State<InputFormScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaController = TextEditingController();
  TextEditingController _tglLahirController = TextEditingController();

  String _jk = "";
  String _agama = "";
  String? _jkError;
  String? _agamaError;

  final List<String> agamaList = [
    "Islam",
    "Kristen",
    "Katolik",
    "Hindu",
    "Buddha",
    "Khonghucu",
  ];

  @override
  void initState() {
    super.initState();
    _tglLahirController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Input Form",
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: InputDecoration(
                  labelText: "Nama",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) return "Input Nama";
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Jenis Kelamin",   
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Laki-laki",
                    groupValue: _jk,
                    onChanged: (value) {
                      setState(() {
                        _jk = value!;
                        _jkError = null;
                      });
                    },
                  ),
                  Text("Laki-laki"),
                  Radio<String>(
                    value: "Perempuan",
                    groupValue: _jk,
                    onChanged: (value) {
                      setState(() {
                        _jk = value!;
                        _jkError = null;
                      });
                    },
                  ),
                  Text("Perempuan"),
                ],
              ),
              if (_jkError != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    _jkError!,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _tglLahirController,
                decoration: InputDecoration(
                  labelText: "Tanggal Lahir",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) return "Input Tanggal Lahir";
                  return null;
                },
                onTap: () async {
                  FocusScope.of(context).requestFocus(FocusNode());
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );

                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('dd-MM-yyyy').format(pickedDate);
                    setState(() {
                      _tglLahirController.text = formattedDate;
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  labelText: "Agama",
                  border: OutlineInputBorder(),
                ),
                items: agamaList.map((agama) {
                  return DropdownMenuItem(
                    value: agama,
                    child: Text(agama),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _agama = value!;
                    _agamaError = null;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Pilih Agama";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submit,
                child: Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_jk.isEmpty) {
        setState(() {
          _jkError = "Pilih jenis kelamin";
        });
      }

      if (_agama.isEmpty) return;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormScreen(
            nama: _namaController.text,
            jk: _jk,
            tglLahir: _tglLahirController.text,
            agama: _agama,
          ),
        ),
      );
    }
  }
}
