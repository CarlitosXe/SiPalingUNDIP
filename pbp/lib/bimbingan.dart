import 'package:flutter/material.dart';
import 'package:pbp/appbar.dart';

final List<Map<String, dynamic>> _databimbingan = [
  {
    "no": 1,
    "jenis": "Bimbingan PKL",
    "Nama Dosen": "Dr. Fahriant Ekrie, S.T., M.Kom.",
    "Status": "Selesai",
    "Bimbingan Ke": 2,
    "Waktu": "Senin, 19 Oktober 2022 \n13.00"
  },
  {
    "no": 2,
    "jenis": "Bimbingan Wali",
    "Nama Dosen": "Mulyono Joko, M.Cs.",
    "Status": "Selesai",
    "Bimbingan Ke": 1,
    "Waktu": "Rabu, 22 Oktober 2022 \n11.00"
  },
  {
    "no": 3,
    "jenis": "Bimbingan Skripsi",
    "Nama Dosen": "Dr. Andi Rahmat, S.T., M.T.",
    "Status": "Dalam Proses",
    "Bimbingan Ke": 3,
    "Waktu": "Kamis, 25 November 2022 \n10.00"
  },
  {
    "no": 4,
    "jenis": "Bimbingan Tugas Akhir",
    "Nama Dosen": "Dr. Siti Nurhaliza, M.Kom.",
    "Status": "Belum Selesai",
    "Bimbingan Ke": 1,
    "Waktu": "Jumat, 30 Desember 2022 \n14.00"
  },
  {
    "no": 5,
    "jenis": "Bimbingan PKL",
    "Nama Dosen": "Dr. Budi Santoso, S.T., M.Eng.",
    "Status": "Selesai",
    "Bimbingan Ke": 2,
    "Waktu": "Selasa, 15 November 2022 \n09.00"
  },
  {
    "no": 6,
    "jenis": "Bimbingan Wali",
    "Nama Dosen": "Ibu Rina Puspitasari, M.Cs.",
    "Status": "Selesai",
    "Bimbingan Ke": 4,
    "Waktu": "Senin, 10 Oktober 2022 \n12.00"
  },
];

class Bimbingan extends StatelessWidget {
  const Bimbingan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyNavbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Bimbingan",
              style: TextStyle(
                fontSize: 55,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      width: 1200,
                      height: 700,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      child: ElevatedButton(
                        onPressed: () {
                          // Tambahkan aksi untuk tombol di sini
                        },
                        child: Text(
                          "Tambah",
                          style: TextStyle(
                            fontSize: 34,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 80, // Menyesuaikan posisi agar tidak tertutup tombol
                      right: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20), // Apply border radius here
                          child: DataTable(
                            columns: [
                              DataColumn(label: Text('No')),
                              DataColumn(label: Text('Jenis')),
                              DataColumn(label: Text('Nama Dosen')),
                              DataColumn(label: Text('Status')),
                              DataColumn(label: Text('Bimbingan Ke')),
                              DataColumn(label: Text('Waktu')),
                            ],
                            rows: _databimbingan.map((item) {
                              return DataRow(cells: [
                                DataCell(Text(item['no'].toString())),
                                DataCell(Text(item['jenis'])),
                                DataCell(Text(item['Nama Dosen'])),
                                DataCell(Text(item['Status'])),
                                DataCell(Text(item['Bimbingan Ke'].toString())),
                                DataCell(Text(item['Waktu'])),
                              ]);
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}