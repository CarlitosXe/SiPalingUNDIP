import 'package:flutter/material.dart';
import 'package:pbp/appbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Dftbimbinganmhs extends StatefulWidget {
  const Dftbimbinganmhs({super.key});

  @override
  _DftbimbinganmhsState createState() => _DftbimbinganmhsState();
}

class _DftbimbinganmhsState extends State<Dftbimbinganmhs> {
  String? selectedBimbingan;
  String? selectedDosen;
  String? selectedWaktu;
  TextEditingController desccontroller = TextEditingController();

  // Function to add data to Firestore
  Future<void> addBimbinganInfoToDatabase(
      String? bimbingan, String? dosen, String? waktu, String desc) async {
    try {
      await FirebaseFirestore.instance.collection('bimbingan').add({
        'jenis_bimbingan': bimbingan,
        'dosen_pembimbing': dosen,
        'waktu': waktu,
        'deskripsi': desc,
      });
    } catch (e) {
      print("Error adding document: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyNavbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tambah Bimbingan",
              style: TextStyle(
                fontSize: 55,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  width: 1200,
                  height: 1500,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
 "Jenis Bimbingan",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: 1000,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: DropdownButtonFormField<String>(
                          value: selectedBimbingan,
                          hint: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Pilih Jenis Bimbingan",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              value: "Bimbingan Skripsi",
                              child: Text("Bimbingan Skripsi"),
                            ),
                            DropdownMenuItem(
                              value: "Bimbingan Tugas Akhir",
                              child: Text("Bimbingan Tugas Akhir"),
                            ),
                            DropdownMenuItem(
                              value: "Bimbingan Praktikum",
                              child: Text("Bimbingan Praktikum"),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              selectedBimbingan = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Deskripsi Bimbingan",
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          color: Colors.white,
                          width: 1000,
                          child: TextField(
                            controller: desccontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: "Isi teks",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Dosen Pembimbing",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 1000,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: DropdownButtonFormField<String>(
                            value: selectedDosen,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text ("Pilih Dosen Pembimbing",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              ),
                            ),
                            items: [
                              DropdownMenuItem(
                                value: "Dosen 1",
                                child: Text("Dosen 1"),
                              ),
                              DropdownMenuItem(
                                value: "Dosen 2",
                                child: Text("Dosen 2"),
                              ),
                              DropdownMenuItem(
                                value: "Dosen 3",
                                child: Text("Dosen 3"),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedDosen = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "Waktu",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 1000,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: DropdownButtonFormField<String>(
                            value: selectedWaktu,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Pilih Waktu",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            items: [
                              DropdownMenuItem(
                                value: "Waktu 1",
                                child: Text("Waktu 1"),
                              ),
                              DropdownMenuItem(
                                value: "Waktu 2",
                                child: Text("Waktu 2"),
                              ),
                              DropdownMenuItem(
                                value: "Waktu 3",
                                child: Text("Waktu 3"),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedWaktu = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                if (selectedBimbingan != null &&
                                    selectedDosen != null &&
                                    selectedWaktu != null &&
                                    desccontroller.text.isNotEmpty) {
                                  // Tampilkan dialog dengan informasi bimbingan
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Bimbingan Berhasil Ditambahkan!'),
                                        content: Text(
                                          'Jenis Bimbingan: $selectedBimbingan\n'
                                          'Dosen Pembimbing: $selectedDosen\n'
                                          'Waktu: $selectedWaktu\n'
                                          'Deskripsi: ${desccontroller.text}',
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () async {
                                              // Panggil fungsi untuk menyimpan data ke database
                                              await addBimbinganInfoToDatabase(
                                                selectedBimbingan,
                                                selectedDosen,
                                                selectedWaktu,
                                                desccontroller.text,
                                              );

                                              // Reset form setelah data berhasil ditambahkan
                                              setState(() {
                                                selectedBimbingan = null;
                                                selectedDosen = null;
                                                selectedWaktu = null;
                                                desccontroller.clear();
                                              });

                                              Navigator.of(context).pop(); // Tutup dialog
                                            },
                                            child: Text('OK'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } else {
                                  // Tampilkan peringatan jika form belum lengkap
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Mohon lengkapi semua field!')),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.green,
                              ),
                              child: Text("Terima"),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Logic for "Tolak" button can be added here
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.red,
                              ),
                              child: Text("Tolak"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}