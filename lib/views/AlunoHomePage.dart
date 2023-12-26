import 'package:flutter/material.dart';
import 'package:sismed/widgets/HomeProCard.dart';
import 'package:sismed/widgets/MyBottomNavigationBar.dart';

class AlunoHomePage extends StatefulWidget {
  const AlunoHomePage({super.key});

  @override
  State<AlunoHomePage> createState() => _AlunoHomePageState();
}

class _AlunoHomePageState extends State<AlunoHomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNavigationBar(pageController: _pageController,),
        body: PageView(
          controller: _pageController,
          onPageChanged: (int index){
            setState(() {
              _pageIndex = index;
            });
          },
          children: [
            SingleChildScrollView(
              child: Column(children: [
                Container(
                    color: Color(0xFF08A64B),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
                    child: const Column(
                      children: [
                        Row(children: [
                          ClipOval(
                            child: Image(
                              image: NetworkImage('http://placehold.it/52'),
                              height: 52,
                              width: 52,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Olá, Usuário',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ]),
                      ],
                    )),
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
                                'Você sabia?',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'É possível agendar uma consulta através da plataforma SUAP! Basta ir no menu, clicar em “saúde”, ir até “Agenda de Atendimentos” e pronto!',
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Ir para o SUAP',
                                    style: TextStyle(
                                      color: Color(0xFF0F6634),
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  )
                                ],
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
                        SizedBox(
                          height: 18,
                        ),
                        HomeProCard(role: 'Médico', status: 'presente'),
                        SizedBox(
                          height: 18,
                        ),
                        HomeProCard(role: 'Enfermeira', status: 'presente'),
                        SizedBox(
                          height: 18,
                        ),
                        HomeProCard(role: 'Nutricionista', status: 'presente'),
                        SizedBox(
                          height: 18,
                        ),
                        HomeProCard(role: 'Dentista', status: 'presente'),
                      ],
                    ))
              ]),
            ),
          ],
        )
    );
  }
}
