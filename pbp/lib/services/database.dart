import 'package:cloud_firestore/cloud_firestore.dart';

class Bimbingan {
  String jenis_bimbingan;
  String deskripsi;
  String dosen_pembimbing;
  String waktu;

  Bimbingan(
    this.jenis_bimbingan,
    this.deskripsi,
    this.dosen_pembimbing,
    this.waktu,
  );
}

class BimbinganService{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Bimbingan>> fetchData() async {
  final snapshot = await _firestore.collection('Bimbingan').get();
    return snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>;
      return Bimbingan(
        data['jenis_bimbingan'],
        data['deskripis'],
        data['dosen_pembimbing'],
        data['waktu'],
      );
  }).toList();
}
}