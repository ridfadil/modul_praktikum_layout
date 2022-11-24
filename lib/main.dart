import 'package:flutter/material.dart';
import 'package:latihan_layout/item_list.dart';
import 'package:latihan_layout/list_view.dart';
import 'package:latihan_layout/list_view_builder.dart';
import 'package:latihan_layout/model.dart';

void main(){
  runApp(
    const MaterialApp(
    home: ListViewBase(),
    debugShowCheckedModeBanner: false,
  ),);
}

class ListViewBase extends StatefulWidget {
  const ListViewBase({Key? key}) : super(key: key);

  @override
  State<ListViewBase> createState() => _ListViewBaseState();
}

class _ListViewBaseState extends State<ListViewBase> {
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
          title : const Text('Contoh List view')
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ListViews()),
                        );
                      },
                      child: const Text('List View '),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ListViewsBuilder()),
                        );
                      },
                      child: const Text('List View Builder'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}































































/*
import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
    home: Layouting(),
    debugShowCheckedModeBanner: false,
  ),);
}

class Layouting extends StatefulWidget {
  const Layouting({Key? key}) : super(key: key);

  @override
  State<Layouting> createState() => _LayoutingState();
}

class _LayoutingState extends State<Layouting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title : const Text('Contoh Layouting')
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color: Colors.green,
                height: double.infinity,
                child: const Text('HALLO',style: TextStyle(color: Colors.white),),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.red,
                      //height: double.infinity,
                      child: const Text('PROGRAMMER UIN',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  Flexible(
                    child: Stack( //Tambahkan Stack
                      children: [
                        Container(
                          alignment: Alignment.center,
                          color: Colors.blue,
                          //height: double.infinity,
                          child: const Text('SUNAN GUNUNG DJATI',style: TextStyle(color: Colors.white),),
                        ),
                        Container( // Tambahkan Container Baru
                          alignment: Alignment.center,
                          color: Colors.grey,
                          height: 50,
                          width: 50,
                          child: const Text('GREAT',style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
