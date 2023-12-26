import 'package:sismed/views/AlunoHomePage.dart';
import 'package:sismed/views/ProfissionalHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SisMed',
      home: InitialPage(),
    );
  }
}

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitalPageState();
}

class _InitalPageState extends State<InitialPage> {

  void _login(BuildContext context){
    Navigator.push(
      context,
      // MaterialPageRoute(builder: (context) => AlunoHomePage())
      MaterialPageRoute(builder: (context) => ProfissionalHomePage())
    );
  }

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/professional_team.svg',),
              const Text('Login SisMed',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 8,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 66),
                child: Text('O SisMed é um aplicativo que tem como objetivo facilitar o acesso dos alunos aos serviços do setor de saúde do IFRN.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,

                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Input Text aqui debaixo
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Matricula',
                      style: TextStyle(

                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              const SizedBox(height: 16),
              // Input Text aqui debaixo
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Senha'),
                      TextFormField(
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFFEE00EE),
                            ),
                          ),

                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                            child: Icon(
                              _isPasswordVisible
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.remove_red_eye,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () => _login(context),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 110, vertical: 16),
                    backgroundColor: Color(0xff0D803D),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        )
                    )
                ),
                child: Text('Entrar com SUAP'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
