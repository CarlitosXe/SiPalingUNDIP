import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pbp/bimbingan.dart';
import 'package:pbp/dftbimbinganmhs.dart';
import 'package:pbp/jadwalpebimbing.dart';
import 'package:pbp/monitoring_PA.dart';
import 'package:pbp/dftbimbingan.dart';
import 'package:pbp/qrcode.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb) {
  await  Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyBBSY-ufVdAsZSWqVGGsek-i0cKSNnGsVc",
  authDomain: "sipalingundip.firebaseapp.com",
  projectId: "sipalingundip",
  storageBucket: "sipalingundip.firebasestorage.app",
  messagingSenderId: "161943539485",
  appId: "1:161943539485:web:69f831e187f32b88059bf4",
  measurementId: "G-5NFFPSDQSY"));
  }else{
    await Firebase.initializeApp();
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    initialRoute: '/third', // Mulai dari layar ini
    routes: {
      '/': (context) => MonitoringPembimbingAkademik(),
      '/second': (context) => HBimbingan(),
      '/third': (context) => Dftbimbingan(),
      '/fourth': (context) => Dftbimbinganmhs(),
      '/fifth': (context) => Qrcode(),
      '/sixth': (context) => Jadwalpebimbing(),
    },
  );
}
}
