import 'package:flutter/material.dart';
import 'package:pbp/appbar.dart';

class Dftbimbinganmhs extends StatelessWidget {
  const Dftbimbinganmhs({super.key});

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
                        child: ExpansionTile(
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Pilih Jenis Bimbingan",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text("Bimbingan Skripsi"),
                              onTap: () {
                              },
                            ),
                            ListTile(
                              title: Text("Bimbingan Tugas Akhir"),
                              onTap: () {
                              },
                            ),
                            ListTile(
                              title: Text("Bimbingan Praktikum"),
                              onTap: () {
                              },
                            ),
                          ],
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
                          child: TextFormField(
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
                          child: ExpansionTile(
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Pilih Dosen Pembimbing",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text("Detail 1"),
                                onTap: () {
                                },
                              ),
                              ListTile(
                                title: Text("Detail 2"),
                                onTap: () {
                                },
                              ),
                              ListTile(
                                title: Text("Detail 3"),
                                onTap: () {
                                },
                              ),
                            ],
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
                          child: ExpansionTile(
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Pilih Waktu",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text("Detail 1"),
                                onTap: () {
                                },
                              ),
                              ListTile(
                                title: Text("Detail 2"),
                                onTap: () {
                                },
                              ),
                              ListTile(
                                title: Text("Detail 3"),
                                onTap: () {
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [
                            ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black, backgroundColor: Colors.green, 
                              ),
                              child: Text("Terima"),
                            ),
                            SizedBox(width: 20), 
                            ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black, backgroundColor: Colors.red, 
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