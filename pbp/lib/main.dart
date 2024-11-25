import 'package:flutter/material.dart';
import 'package:pbp/bimbingan.dart';
import 'package:pbp/dftbimbinganmhs.dart';
import 'package:pbp/jadwalpebimbing.dart';
import 'package:pbp/monitoring_PA.dart';
import 'package:pbp/dftbimbingan.dart';
import 'package:pbp/qrcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/third',
        routes: {
          '/': (context) => MonitoringPembimbingAkademik(),
          '/second': (context) => Bimbingan(),
          '/third': (context)=> Dftbimbingan(),
          '/fourth': (context) => Dftbimbinganmhs(),
          '/fifth': (context) => Qrcode(),
          '/sixth' : (context) => Jadwalpebimbing()
      },
    );
  }
}
