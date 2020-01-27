import 'package:flutter/material.dart';
class WidigetLogin extends StatefulWidget {
  @override
  _WidigetLoginState createState() => _WidigetLoginState();
}
class _WidigetLoginState extends State<WidigetLogin> {

  bool _lembrar;
  void _lembrarChanged(bool value) => setState(() => _lembrar = value ?? false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('ESTOQUE'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.transparent,
              child: Image.asset('imagens/berplogo.png',
              height: 124,),
            ),
            //Usuário
            TextField(
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              decoration: InputDecoration(
                labelText: 'Usuário',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.0)
                )
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 30,
            ),
            //Senha
            TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.0)
                )
              ),
              keyboardType: TextInputType.number,
            ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  
                  Checkbox(
                    onChanged: _lembrarChanged,
                    value: _lembrar ?? false),
                    Text('lembrar usuario',
                    style: TextStyle(
                      color: Colors.blueAccent
                    ),
                    ),
                    
                ],

              ),
            SizedBox(
              height: 30,
            ),

            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 80,maxWidth:150),
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                splashColor: Colors.blueGrey,
                color: Colors.black,
                onPressed: () { 
                 },
                 child: Row(
                   children: <Widget>[
                     Icon(
                       Icons.account_circle, color: Colors.orange,size: 50,
                     ),
                     Text(
                       'Login',
                       style: TextStyle(
                         
                         color: Colors.yellowAccent
                       ),
                     ),
                   ],
                 ),),
            ),
          ],
        ),
      ),
    );
  }
}