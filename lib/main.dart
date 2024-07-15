import 'package:flutter/material.dart';
import 'package:navegacion/app1/place_tracker_app.dart';
import 'package:navegacion/app2/src/app.dart';
import 'package:navegacion/app3/app3.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app title',
      home: Home(),
      // Aquí se agregan las rutas, para llamar es un widget 
      routes: {
        "/home": (context) => Home(),
        "/app1": (context) => Bookstore(),
        "/app2": (context) => ChangeNotifierProvider(create: (context) => AppState(), child: const PlaceTrackerApp(),),
         "/app3": (context) => App3(), // Agrega la ruta para app3
      }, 
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menú principal')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Copiar este botón para ir a la app 
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/app1');
                  }, 
                  child: const Text("App1"), 
                ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/app2');
                  }, 
                  child: const Text("App2"), 
                ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/app3'); // Botón para ir a la app3
                  }, 
                  child: const Text("App3"), 
                ), 
            ],
          ),
        )
      );
  }
}
