import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff2E3440),
        appBar: AppBar(
          backgroundColor: Color(0xff4C566A),
          title: Text(
            "Quizie",
            style: TextStyle(
              color: Color(0xffD8DEE9),
            ),
          ),
          titleSpacing: 1.5,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Center(
                      child: Text(
                        "hello",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        clipBehavior: Clip.hardEdge,
                        surfaceTintColor: Colors.transparent,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: Colors.green,
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                        child: InkWell(
                          splashColor: Colors.green[900],
                          onTap: () {
                            debugPrint('tapped');
                          },
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 25),
                              child: Text(
                                'True',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        surfaceTintColor: Colors.transparent,
                        clipBehavior: Clip.hardEdge,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 10,
                        color: Colors.red,
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            debugPrint('tapped');
                          },
                          splashColor: Colors.red[900],
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 25),
                              child: Text(
                                'False',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
