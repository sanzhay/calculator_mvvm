import 'package:flutter/material.dart';
import 'result_field.dart';
import '../viewmodel/calculator_brain.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  CalculatorBrain calculatorBrain = CalculatorBrain();

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            ResultField(),
            //  CalculationsDataField(),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: TextField(
                                    controller: _controller,
                                  ),
                                ),
                                // end
                              ),
                              Expanded(
                                flex: 1,
                                child: FlatButton(
                                  color: Colors.grey,
                                  onPressed: () {
                                    setState(() {
                                      _controller.text = '';
                                    });
                                  },
                                  child: Text('Clear'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 300.0,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '1';
                                          },
                                          child: Text('1'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '2';
                                          },
                                          child: Text('2'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '3';
                                          },
                                          child: Text('3'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              calculatorBrain.calculate(
                                                  _controller.text, '+');
                                              //op = '+';
                                              _controller.text = '';
                                            });
                                          },
                                          child: Text('+'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '4';
                                          },
                                          child: Text('4'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '5';
                                          },
                                          child: Text('5'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '6';
                                          },
                                          child: Text('6'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              calculatorBrain.calculate(
                                                  _controller.text, '-');
                                              _controller.text = '';
                                            });
                                          },
                                          child: Text('-'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '7';
                                          },
                                          child: Text('7'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '8';
                                          },
                                          child: Text('8'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '9';
                                          },
                                          child: Text('9'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              calculatorBrain.calculate(
                                                  _controller.text, '*');
                                              _controller.text = '';
                                            });
                                          },
                                          child: Text('*'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '0';
                                          },
                                          child: Text('0'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        flex: 1,
                                        child: FlatButton(
                                          onPressed: () {
                                            _controller.text += '.';
                                          },
                                          child: Text('.'),
                                        ),
                                      ),

                                      // ===================================
                                      Expanded(
                                        flex: 1,
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              calculatorBrain.calculate(
                                                  _controller.text, '/');
                                              _controller.text = '';
                                            });
                                          },
                                          child: Text('/'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
