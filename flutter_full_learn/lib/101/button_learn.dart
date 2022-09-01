import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
          TextButton(onPressed: (){}, child: const Text("Text button")),
          ElevatedButton(onPressed: (){}, child: const Text("Elevated button")),
          IconButton(onPressed: (){}, icon: const Icon(Icons.abc_rounded),),
          FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
          OutlinedButton(onPressed: (){}, child: const Text("Outlined button"))
      ]),
    );
  }
}