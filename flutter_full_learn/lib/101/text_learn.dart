import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);

  final String name = "Melike";
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(("Welcome $name ${name.length}"),
              maxLines: 2, //maksimum satır sayısı
              overflow: TextOverflow
                  .ellipsis, //maksimumum satır sayısı nedeniyle taşma olursa üç nokta ekleyecek
              textAlign: TextAlign.start,
              style: ProjectStyles.welcomeStyle),

          //Advanced kullanım bu şekildedir:
          Text(("Hello $name ${name.length}"),
              maxLines: 2, //maksimum satır sayısı
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor)),
          Text(keys.welcome)
        ],
      ),
    ));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline,
      color: Colors.red);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  //projede kullanacağımız elemanları yazıyoruz:
  final String welcome = "Merhaba";
}
