import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decreamentCounter() {
    setState(() {
      _counter--;
    });
  }
  void _multiplicationCounter() {
    setState(() {
     _counter = _counter * 2;
    });
  }
void _divisionCounter() {
    setState(() {
      _counter = _counter/2;
    });
  }

void _clearCounter() {
    setState(() {
      _counter = _counter*0;
    });
  }

  
    @override
    Widget build(BuildContext context) {
      var scaffold = Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              TextButton(
                  onPressed: () {
                   _incrementCounter();
                  },
                  child: Text('+',style: TextStyle(
                    fontSize: 50
                  )),
              
                  ),
                  TextButton(
                  onPressed: () {
                   _decreamentCounter();
                  },
                  child: Text('-',style: TextStyle(
                    fontSize: 50
                  ) ),
                  

                  ),
                  TextButton(
                  onPressed: () {
                   _multiplicationCounter();
                  },
                  child: Text('×',style: TextStyle(
                    fontSize: 50
                  ))
                  ),
                  TextButton(
                  onPressed: () {
                   _divisionCounter();
                  },
                  child: Text('÷',style: TextStyle(
                    fontSize: 50
                  ))
                  ),
            TextButton(
                  onPressed: () {
                   _clearCounter();
                  },
                  child: Text('clear',style: TextStyle(
                    fontSize: 50
                  ))
                  ),
            ],
          ),
        ),
      );
      return scaffold;
    }
  }

