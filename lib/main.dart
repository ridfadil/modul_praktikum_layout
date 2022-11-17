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
