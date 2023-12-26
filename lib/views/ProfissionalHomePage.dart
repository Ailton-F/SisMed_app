import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class ProfissionalHomePage extends StatefulWidget {
  const ProfissionalHomePage({super.key});

  @override
  State<ProfissionalHomePage> createState() => _ProfissionalHomePageState();
}

class _ProfissionalHomePageState extends State<ProfissionalHomePage> {
  var isCheckedS = false;
  var isCheckedT = false;
  var isCheckedQ = false;
  var isCheckedQi = false;
  var isCheckedSe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xFF08A64B),
                    padding: EdgeInsets.symmetric(vertical: 45, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              color: Colors.white,
                              icon: Icon(Icons.menu),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        const Text(
                          'Cadastrar horário',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    'Selecione os horários de atendimento do mês:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedS,
                            activeColor: Color(0xFF08A64B),
                            onChanged: (val) {
                              setState(() {
                                isCheckedS = val!;
                              });
                            },
                          ),
                          Text('Segunda-feira')
                        ],
                      ),
                      Visibility(
                        visible: isCheckedS,
                        child: Row(
                          children: [
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'às',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFBBBFBF),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedT,
                            activeColor: Color(0xFF08A64B),
                            onChanged: (val) {
                              setState(() {
                                isCheckedT = val!;
                              });
                            },
                          ),
                          Text('terça-feira')
                        ],
                      ),
                      Visibility(
                        visible: isCheckedT,
                        child: Row(
                          children: [
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'às',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFBBBFBF),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedQ,
                            activeColor: Color(0xFF08A64B),
                            onChanged: (val) {
                              setState(() {
                                isCheckedQ = val!;
                              });
                            },
                          ),
                          Text('Quarta-feira')
                        ],
                      ),
                      Visibility(
                        visible: isCheckedQ,
                        child: Row(
                          children: [
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'às',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFBBBFBF),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedQi,
                            activeColor: Color(0xFF08A64B),
                            onChanged: (val) {
                              setState(() {
                                isCheckedQi = val!;
                              });
                            },
                          ),
                          Text('Quinta-feira')
                        ],
                      ),
                      Visibility(
                        visible: isCheckedQi,
                        child: Row(
                          children: [
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'às',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFBBBFBF),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedSe,
                            activeColor: Color(0xFF08A64B),
                            onChanged: (val) {
                              setState(() {
                                isCheckedSe = val!;
                              });
                            },
                          ),
                          Text('Sexta-feira')
                        ],
                      ),
                      Visibility(
                        visible: isCheckedSe,
                        child: Row(
                          children: [
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'às',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFBBBFBF),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(':'),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 58,
                              height: 30,
                              child: TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: false,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "00",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      ElevatedButton(
                        onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                            backgroundColor: Color(0xff0D803D),
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            )
                        ),
                        child: Text('Enviar'),
                      )
                    ],
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
