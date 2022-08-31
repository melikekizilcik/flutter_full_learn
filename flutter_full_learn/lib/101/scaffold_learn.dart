import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sizedbox_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold'da sık kullanılan widgetlar:
    return Scaffold(
      appBar: AppBar(title: const Text("Scaffold samples")),
      body: const Text("Merhaba"),
      backgroundColor: Colors.lime,
      extendBody: true,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(height: 200),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      //bottomSheet: const Text("data"),
      bottomNavigationBar: Container(
        height:200,
        //decoration: ProjectContainerDecoration(), yazdığımız tasarım classını buraya ekleyebiliyoruz
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "a"),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "b"),
          ],
        ),
      ),
    );
  }
}
