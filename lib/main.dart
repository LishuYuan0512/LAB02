import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
late TextEditingController _controller1;
late TextEditingController _controller2;
var imageSource = "images/question-mark.png";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }
  void buttonClicked() {
    setState(() {
      if (_controller2.text == "QWERTY123") {
        imageSource = "images/idea.png";
      } else {
        imageSource = "images/stop.png";
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
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
            const Text(
              'Login Page',
              style: TextStyle(fontSize: 24)
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextField(controller: _controller1),
            const TextField(
                decoration: InputDecoration(
                    hintText:"Login",
                    border: OutlineInputBorder(),
                    labelText: "Login name"
                )),
            TextField(controller: _controller2),
            const TextField(
                decoration: InputDecoration(
                    hintText:"Password",
                    border: OutlineInputBorder(),
                    labelText: "Password"
                )),
            ElevatedButton(
              onPressed: () {
                buttonClicked();
              },
              child: const Text("Login"),
            ),
            const SizedBox(height: 20),
            Image.asset(imageSource, width: 300, height: 300),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
