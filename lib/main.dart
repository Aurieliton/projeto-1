import 'package:estoque/Forms/WidigetLogin.dart';
import 'package:flutter/material.dart';


void main() => runApp(ProjetoEstoque());


class ProjetoEstoque extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: WidigetLogin(),
    );
  }
}
