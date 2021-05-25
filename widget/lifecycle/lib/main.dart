import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState(counter: 1);
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  _MyHomePageState({this.counter = 0}) {
    print('_MyHomePageState constructor');
  }

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    print('_MyHomePageState initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print('_MyHomePageState didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);

    print('_MyHomePageState didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();

    print('_MyHomePageState deactivate');
  }

  @override
  void dispose() {
    super.dispose();

    print('_MyHomePageState dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('_MyHomePageState build: $counter');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CounterContainer(
              count: counter,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterContainer extends StatefulWidget {
  final int count;

  CounterContainer({required this.count}) {
    print('CounterContainer constructor: $count');
  }

  @override
  _CounterContainerState createState() => _CounterContainerState(count: count);
}

class _CounterContainerState extends State<CounterContainer> {
  int count;
  _CounterContainerState({required this.count}) {
    print('_CounterContainerState constructor: $count');
  }

  @override
  void initState() {
    super.initState();
    print('_CounterContainerState initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print('_CounterContainerState didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant CounterContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('_CounterContainerState didUpdateWidget: ${widget.count}');
    setState(() {
      count = widget.count;
    });
  }

  @override
  void deactivate() {
    super.deactivate();

    print('_CounterContainerState deactivate');
  }

  @override
  void dispose() {
    super.dispose();

    print('_CounterContainerState dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('_CounterContainerState build: $count');
    return Container(
      child: Counter(
        count: count,
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final int count;

  Counter({required this.count}) {
    print('Counter constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('Counter build');
    print('========================================');
    return Container(
      child: Text(
        '$count',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
