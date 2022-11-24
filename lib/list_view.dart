import 'package:flutter/material.dart';
import 'package:latihan_layout/item_list.dart';

class ListViews extends StatefulWidget {
  const ListViews({Key? key}) : super(key: key);

  @override
  State<ListViews> createState() => _ListViewsState();
}

class _ListViewsState extends State<ListViews> {
  List<Widget> listMhs = [];

  @override
  void initState() {
    listMhs.add(ItemList(nama: 'Farid Padilah',kelas: 'IF-A',nim: '123435'));
    for(int a=0;a<100;a++) {
      listMhs.add(ItemList(nama: 'Mugiwara $a',kelas: 'IF-$a',nim: '123456$a'));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title : const Text(' Contoh List View')
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: listMhs,
        )
      ),
    );
  }
}
