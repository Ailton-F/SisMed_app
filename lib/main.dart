import 'package:sismed/views/AlunoHomePage.dart';
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
      MaterialPageRoute(builder: (context) => AlunoHomePage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/professional_team.svg',),
          const SizedBox(height: 28,),
          const Text('Login SisMed',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 28,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 66),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit molestie vulputate. Mauris eu sapien diam.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),
            ),
          ),
          const SizedBox(height: 100,),
          ElevatedButton(
            onPressed: () => _login(context),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 55, vertical: 15),
              backgroundColor: Color(0xff0D803D),
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                )
              )
            ),
            child: Text('Fazer login com SUAP'),
          )
        ],
      ),
    );
  }
}
