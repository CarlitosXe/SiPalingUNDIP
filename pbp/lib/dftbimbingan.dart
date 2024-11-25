import 'package:flutter/material.dart';
import 'package:pbp/appbar.dart';

class Dftbimbingan extends StatelessWidget {
  const Dftbimbingan({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: MyNavbar(),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Atur Bimbingan",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
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
                    top: 100, 
                    left: 50, 
                    right: 50, 
                    child: Container(
                      width: 400, // Increase the width of the white box
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ExpansionTile(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0), // Add padding
                          child: Text(
                            "Krisna Okky Widayat - Semester 8",
                            style: TextStyle(
                              fontSize: 20, // Adjusted font size
                              color: Colors.black,
                            ),
                          ),
                        ),
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "Jenis: Bimbingan Skripsi\n"
                              "Waktu: Senin, 29 OKtober 2024\n"
                              "jam  : 13.00\n",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 40,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    foregroundColor: Colors.black,
                                  ),
                                   onPressed:(){}, 
                                   child: Text("Terima"),
                                   ),
                              ),
                             Container(
                               width: 150,
                               height: 40,
                               child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.black
                                ),
                                onPressed: (){}, 
                               child: Text("Tolak"),
                              ),
                             ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100, // Align with the white box
                    right: 50,
                    child: Container(
                      width: 100,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Belum",
                          style: TextStyle(
                            fontSize: 30, // Adjusted font size
                            color: Colors.black,
                          ),
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