import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Browser',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title:" "),
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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
                'BROWSE CATEGORIES',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
            ),
            Text(
              'Not sure about exactly which recipe you\'re looking for? Do a search, or dive into our most popular categories.',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16),
            ),
            Text(
                'BY MEAT',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/Beef.jpg'),
                          radius: 100,
                        ),
                        Text("BEEF", style: TextStyle(fontSize: 23,color: Colors.white),)
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/Chicken.jpg'),
                          radius: 100,
                        ),
                        Text("CHICKEN", style: TextStyle(fontSize: 23,color: Colors.white))
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/Pork.jpg'),
                          radius: 100,
                        ),
                        Text("PORK", style: TextStyle(fontSize: 23,color: Colors.white))
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/Seafood.jpg'),
                          radius: 100,
                        ),
                        Text("SEAFOOD", style: TextStyle(fontSize: 23,color: Colors.white))
                      ],
                    ),
                  ],
                ),

            Text(
                'BY COURSE',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/Main dishes.jpg'),
                      radius: 100,
                    ),
                    Text('Main Dishes', style: TextStyle(fontSize: 23)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/Salad.jpg'),
                      radius: 100,
                    ),
                    Text('Salad Recipes', style: TextStyle(fontSize: 23)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/Side Dishes.jpg'),
                      radius: 100,
                    ),
                    Text('Side Dishes', style: TextStyle(fontSize: 23)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/Crockpot.jpg'),
                      radius: 100,
                    ),
                    Text('Crockpot', style: TextStyle(fontSize: 23)),
                  ],
                ),
              ],
            ),
              ],
            ),
      ],
        ),
    );
  }
}