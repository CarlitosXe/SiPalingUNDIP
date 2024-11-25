import 'package:flutter/material.dart';
import 'package:pbp/appbar.dart';

final List<Map<String, dynamic>> _dataMhs = [
    {"nama": "krokkyy", "nim": "24060122140105", "angkatan": "2033", "IPK": 3, "Status": "Aktif"},
    {"nama": "Okky", "nim": "24060122140150", "angkatan": "2022", "IPK": 3, "Status": "Cuti"},
  ];

class MonitoringPembimbingAkademik extends StatelessWidget {
  const MonitoringPembimbingAkademik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyNavbar(),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Monitoring",
                style: TextStyle(
                  fontSize: 55,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Container(
                    width: 1200,
                    height: 700,
                    decoration: BoxDecoration(
                      color: Colors.grey, // Warna abu-abu
                      borderRadius: BorderRadius.circular(20), // Mengatur border radius
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Dosen Wali: Adhe Setya Pramayoga, M.T."),
                                        Text("NIP: 199295492384239"),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Mahasiswa Aktif:  "),
                                        Text("Mahasiswa Cuti: "),
                                        Text("Mahasiswa Lulus: "),
                                        Text("Mahasiswa Total: ")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              TextField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "Cari Nama/NIM/Angkatan Mahasiswa",
                                  prefixIcon: Icon(Icons.search),
                                  prefixIconColor: Colors.black, 
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  width: 1200,
                                  color: Colors.white,
                                  child: DataTable(
                                    columns: [
                                      DataColumn(label: Text('Nama')),
                                      DataColumn(label: Text('NIM')),
                                      DataColumn(label: Text('Angkatan')),
                                      DataColumn(label: Text('IPK')),
                                      DataColumn(label: Text('Status')), // Perbaiki 'Staus' menjadi 'Status'
                                    ],
                                    rows: _dataMhs.map((item) {
                                      return DataRow(cells: [
                                        DataCell(Text(item['nama'].toString())),
                                        DataCell(Text(item['nim'])),
                                        DataCell(Text(item['angkatan'].toString())),
                                        DataCell(Text(item['IPK'].toString())),
                                        DataCell(Text(item['Status'].toString())),
                                      ]);
                                    }).toList(), // Pastikan untuk memanggil toList() pada akhir map
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


