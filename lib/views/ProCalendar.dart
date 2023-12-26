import 'package:flutter/material.dart';

class ProCalendar extends StatefulWidget {
  const ProCalendar({super.key});

  @override
  State<ProCalendar> createState() => _ProCalendarState();
}

class _ProCalendarState extends State<ProCalendar> {
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
                        IconButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                            );
                          },
                          color: Colors.white,
                          icon: Icon(Icons.arrow_back_ios),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        const Text(
                          'Profissional',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ausente',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'O profissional está ausente por motivos pessoais e familiares.',
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    const Text(
                      'Horários',
                      style: TextStyle(
                          color: Color(0xFF36455A),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Segunda-Feira',
                      style: TextStyle(
                          color: Color(0xFF7A7F80),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      '10:30 ás 11:30',
                      style: TextStyle(
                          color: Color(0xFF7A7F80),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Terça-Feira',
                      style: TextStyle(
                          color: Color(0xFF7A7F80),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      '10:30 ás 11:30',
                      style: TextStyle(
                          color: Color(0xFF7A7F80),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
