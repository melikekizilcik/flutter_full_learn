import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Text("a" * 500),
            ),
            const SizedBox.shrink(), //boş bir alan verir
            SizedBox.square(
              dimension: 50, //kenar size'ı
              child: Text("b" * 50), //kare bir alan verir
            ),
            Container(
              color: Colors.red,
              //basic düzeyde responsive tasarım için constraints önemlidir:
              constraints: const BoxConstraints(maxWidth: 500, minWidth: 50, minHeight: 10, maxHeight: 120),
              child: Text("a" * 100, maxLines: 2,),
              padding: const EdgeInsets.all(10), //içeriye boşluk vermek için
              margin: const EdgeInsets.all(
                  10), //diğer komşu widgetlar ile arasına boşluk vermek için
              decoration: ProjectContainerDecoration(),
            )
          ],
        ));
  }
}


//1. alternatif
class ProjectUtility{
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            border: Border.all(width: 10, color: Colors.white),
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                offset: Offset(0.1, 1),
              )
            ],
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]));
}

//2. alternatif
class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            border: Border.all(width: 10, color: Colors.white),
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                offset: Offset(0.1, 1),
              )
            ],
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]));
}
