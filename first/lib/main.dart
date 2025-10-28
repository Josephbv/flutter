import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 //Clase my app que hereda el StalessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

//contructor 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  //Retornar material App
      title: 'Flutter Demo',  //propiedades del widget
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),//termina el themedata
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ); //termina
  }
}

//Clase MyHomePage hereda el StateFullWidget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

//variable final del titulo
  final String title;


//Creo el estado encapsulando _MyHomePageState
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//clase que hereda el estado global
class _MyHomePageState extends State<MyHomePage> {

  //variable contadora
  int _counter = 0;

//Metodo para contar
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Has pulsado varias veces'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            child: const Icon(Icons.cached),
          ),
        ],
      )
    );
  }
}
