import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
   PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Basketball Points Counter',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${teamA}",
                        style: TextStyle(
                          fontSize: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA+=1;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA+=2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA+=3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                        ),
                      ),
                    ],
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 0.8,
                    indent: 12,
                    endIndent: 12,
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$teamB",
                        style: TextStyle(
                          fontSize: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB+=1;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB+=2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB+=3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamA=0;
                  teamB=0;
                });
              },
              child: Text(
                'Reset',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
