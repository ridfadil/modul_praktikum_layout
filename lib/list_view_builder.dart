import 'package:flutter/material.dart';
import 'package:latihan_layout/item_list.dart';

import 'model.dart';


class ListViewsBuilder extends StatefulWidget {
  const ListViewsBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewsBuilder> createState() => _ListViewsBuilderState();
}

class _ListViewsBuilderState extends State<ListViewsBuilder> {
  List<DataMhs> listMhs = [];

  @override
  void initState() {
    listMhs.add(DataMhs(nama: 'Farid Padilah',kelas: 'IF-A',nim: '52355745'));
    for(int a=0;a<100;a++) {
      listMhs.add(DataMhs(nama: 'Mugiwara $a',kelas: 'IF-$a',nim: '123456$a'));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title : const Text('Contoh List View Builder')
      ),
      body: SafeArea(
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: listMhs.length,
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return  ItemList(
                nama: listMhs[index].nama,
                kelas: listMhs[index].kelas,
                nim: listMhs[index].nim,
              );
            }),
      ),
    );
  }
}
