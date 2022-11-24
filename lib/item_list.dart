import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  String? nama;
  String? kelas;
  String? nim;
  ItemList({Key? key, this.nama,this.kelas,this.nim}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama : $nama'),
                const SizedBox(height: 5,),
                Text('NIM : $nim'),
              ],
            ),
          ),
          Text('Kelas : $kelas'),
        ],
      ),
    );
  }
}
