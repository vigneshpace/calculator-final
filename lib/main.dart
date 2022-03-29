import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 45.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  OutlinedButton(
                    child: const Text("7"),
                    onPressed: () {
                      btnClicked("7");
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  ),
                  OutlinedButton(
                    child: const Text("8"),
                    onPressed: () {
                      btnClicked("8");
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  ),
                  OutlinedButton(
                    child: const Text("9"),
                    onPressed: () {
                      btnClicked("9");
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  ),
                  OutlinedButton(
                    child: const Text("+"),
                    onPressed: () {
                      btnClicked("+");
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  OutlinedButton(
                      onPressed: () {
                        btnClicked("4");
                      },
                      child: const Text("4"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(30.0),
                      )),
                  OutlinedButton(
                    onPressed: () {
                      btnClicked("5");
                    },
                    child: const Text("5"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      btnClicked("6");
                    },
                    child: const Text("6"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      btnClicked("-");
                    },
                    child: const Text("-"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  OutlinedButton(
                      onPressed: () {
                        btnClicked("1");
                      },
                      child: const Text("1"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(
                          30.0,
                        ),
                      )),
                  OutlinedButton(
                      onPressed: () {
                        btnClicked("2");
                      },
                      child: const Text("2"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(30.0),
                      )),
                  OutlinedButton(
                      onPressed: () {
                        btnClicked("3");
                      },
                      child: const Text("3"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(30.0),
                      )),
                  OutlinedButton(
                    onPressed: () {
                      btnClicked("X");
                    },
                    child: const Text("X"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {
                      btnClicked("C");
                    },
                    child: const Text('C'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        btnClicked("0");
                      },
                      child: const Text("0"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(30.0),
                      )),
                  OutlinedButton(
                      onPressed: () {
                        btnClicked("=");
                      },
                      child: const Text("="),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(30.0),
                      )),
                  OutlinedButton(
                    onPressed: () {
                      btnClicked("/");
                    },
                    child: const Text("/"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  late int first, second;
  late String res, text = "";
  late String opp;
  void btnClicked(String btnText) {
    if (btnText == "C") {
      res = "";
      text = "";
      first = 0;
      second = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "X" ||
        btnText == "/") {
      first = int.parse(text);
      res = "";
      opp = btnText;
    } else if (btnText == "=") {
      second = int.parse(text);
      if (opp == "+") {
        res = (first + second).toString();
      }
      if (opp == "-") {
        res = (first - second).toString();
      }
      if (opp == "X") {
        res = (first * second).toString();
      }
      if (opp == "/") {
        res = (first / second).toString();
      }
    } else {
      res = int.parse(text + btnText).toString();
    }
    setState(
      () {
        text = res;
      },
    );
  }
}
