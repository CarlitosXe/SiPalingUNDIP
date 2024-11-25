import 'package:flutter/material.dart';
import 'package:pbp/appbar.dart';
import 'dart:async'; 

class Qrcode extends StatefulWidget {
  const Qrcode({super.key});

  @override
  _QrcodeState createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  late Timer _timer; 
  int _start = 900; 

  List<Map<String, dynamic>> students = [
    {
      'no': 1,
      'nim': '24060122120017',
      'nama': 'Farrel Arduino',
      'status': 'Baru',
      'angkatan': 2022,
      'absensi': 'Hadir', 
    },
    {
      'no': 2,
      'nim': '24060122120020',
      'nama': 'Jati Picasso',
      'status': 'Baru',
      'angkatan': 2022,
      'absensi': 'Izin', // Default value
    },
  ];
  void updateAbsensi(int index, String newAbsensi) {
    setState(() {
      students[index]['absensi'] = newAbsensi;
    });
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        _timer.cancel(); 
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel(); 
    super.dispose();
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60; 
    int secs = seconds % 60; 
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}'; // Format as MM:SS
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyNavbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Timer: ${formatTime(_start)}', 
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Cari NIM/Nama Mahasiswa',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                },
              ),
            ),
            Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('No')),
                    DataColumn(label: Text('NIM')),
                    DataColumn(label: Text('Nama')),
                    DataColumn(label: Text('Status')),
                    DataColumn(label: Text('Angkatan')),
                    DataColumn(label: Text('Absensi')),
                  ],
                  rows: List<DataRow>.generate(students.length, (index) {
                    return DataRow(cells: [
                      DataCell(Text('${students[index]['no']}')),
                      DataCell(Text('${students[index]['nim']}')),
                      DataCell(Text('${students[index]['nama']}')),
                      DataCell(Text('${students[index]['status']}')),
                      DataCell(Text('${students[index]['angkatan']}')),
                      DataCell(
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                String? selectedAbsensi;
                                return AlertDialog(
                                  title: Text('Pilih Absensi'),
                                  content: DropdownButton<String>(
                                    value: selectedAbsensi,
                                    hint: Text('Pilih Status'),
                                    items: <String>['Hadir', 'Izin', 'Alfa']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedAbsensi = newValue;
                                      });
                                    },
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('OK'),
                                      onPressed: () {
                                        if (selectedAbsensi != null) {
                                          updateAbsensi(index, selectedAbsensi!);
                                        }
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            '${students[index]['absensi']}',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ]);
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}