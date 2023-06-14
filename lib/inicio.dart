import 'package:menu/nav_bar.dart';
import 'package:flutter/material.dart';
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          drawer:NavBar(),
          appBar: AppBar(
          title: const Text('Navegacio App'),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Colors.black12,Color.fromARGB(31, 188, 100, 231),Colors.purple],
              begin: Alignment.topCenter),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal:40.0,vertical:100.0),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  CircleAvatar(
                    radius:100.0,
                    backgroundColor:Colors.amber,
                    backgroundImage: AssetImage('images/frey.jpg'),
                  ),
                  Text('Iniciar Sesión',
                  style: TextStyle(fontFamily:'NerkoOne',fontSize:40.0),),
                ],
              )
            ],
          )
        )
      );
  }
}