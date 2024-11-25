import 'package:flutter/material.dart';
import 'package:pbp/appbar.dart';

class Jadwalpebimbing extends StatelessWidget {
  const Jadwalpebimbing({super.key});

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
                "Jadwal Kuliah",
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
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        child: Column(
                          children: [
                            _buildCourseBox(
                              title: "Struktur Data",
                              buttonText: "Selengkapnya",
                            ),
                            const SizedBox(height: 16),
                            _buildCourseBox(
                              title: "Basis Data",
                              buttonText: "Selengkapnya",
                            ),
                            const SizedBox(height: 16),
                            _buildCourseBox(
                              title: "Analisis Strategi Algoritma",
                              buttonText: "Selengkapnya",
                            ),
                            const SizedBox(height: 16),
                            _buildCourseBox(
                              title: "Metodologi Penulisan Ilmiah",
                              buttonText: "Selengkapnya",
                            ),
                            const SizedBox(height: 16),
                            _buildCourseBox(
                              title: "Sistem Operasi",
                              buttonText: "Selengkapnya",
                            ),
                          ],
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

  Widget _buildCourseBox({required String title, required String buttonText}) {
    return Container(
      decoration: BoxDecoration(
        color : Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 27, 245, 45), // Text color
              ),
              onPressed: () {
                // Handle button press
              },
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}