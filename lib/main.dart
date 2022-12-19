import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.black,
                  )),
              Flexible(
                  flex: 5,
                  child: Container(
                    // color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 1,
                                      child: CalcCustomButton("AC"),
                                    ),
                                    Flexible(
                                        flex: 1, child: CalcCustomButton('C')),
                                    Flexible(
                                      flex: 1,
                                      child: CalcCustomButton("%"),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: CalcCustomButton("\u00F7"),
                                    )
                                  ],
                                ))),
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: CalcCustomButton("7"),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: CalcCustomButton("8"),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: CalcCustomButton("9"),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: CalcCustomButton("X"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: CalcCustomButton("4"),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: CalcCustomButton("5"),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: CalcCustomButton("6"),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: CalcCustomButton("-"),
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Flexible(
                                    flex: 1,
                                    child: CalcCustomButton("1"),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: CalcCustomButton("2"),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: CalcCustomButton("3"),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: CalcCustomButton("+"),
                                  )
                                ],
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Flexible(
                                    flex: 1,
                                    child: CalcCustomButton("."),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: CalcCustomButton("0"),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: CalcCustomButton("="),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}

class CalcCustomButton extends StatelessWidget {
  String text;
  CalcCustomButton(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: Colors.white24),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 26.0),
      ),
    );
  }
}
