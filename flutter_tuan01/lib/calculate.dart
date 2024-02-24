// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  final controllerA = TextEditingController();
  final controllerB = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tính toán'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.yellow,
                    child: const Text(
                      'Tính toán',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: controllerA,
                    decoration: const InputDecoration(
                      labelText: "Nhập A là số",
                      border: OutlineInputBorder(),
                      hintText: "Số A",
                      suffixIcon: Icon(Icons.numbers),
                    ),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: controllerB,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: const InputDecoration(
                      labelText: "Nhập B là số",
                      border: OutlineInputBorder(),
                      hintText: 'Số B',
                      suffixIcon: Icon(Icons.numbers),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var rs;
                          if (controllerA.text != '' &&
                              controllerB.text != '') {
                            rs = double.parse(controllerA.text) +
                                double.parse(controllerB.text);
                          } else {
                            rs = 'Vui lòng nhập A và B';
                          }
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text(rs.toString()),
                                );
                              });
                        },
                        child: const Text("Cộng"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                        onPressed: () {
                          controllerA.text = '';
                          controllerB.text = '';
                        },
                        child: const Text("Hủy"),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
