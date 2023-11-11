import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => Login_1();
}

class Main_1 extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(
            child: Text('D - 179'),
          ),
          Container(
            child: Text('아자자!'),
          ),
          Container(
            child: Text('정보 처리 기사 따자!'),
          ),
          Container(
            child: ElevatedButton(onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Main_2()),);
            },
            child: Text('노력했어')),

          ),
          Container(
            child: Image.asset('Image/charactor.jpg'),

          ),
          Container(
            child: ElevatedButton(onPressed: () {},
            child: Text('완료했어')),

          ),
          
          ]
        ),
      ),
    );
  }
}
class Main_2 extends StatelessWidget {
  const Main_2({super.key});
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(
            child: Text('D - 179'),
          ),
          Container(
            child: Text('아자자!'),
          ),
          Container(
            child: Text('정보 처리 기사 따자!'),
          ),

          
          Container(
            child: Image.asset('Image/charactor.jpg'),

          ),
          Container(
            child: ElevatedButton(onPressed: () {Navigator.pop(context);},
            child: Text('고마워')),

          ),
          
          ]
        ),
      ),
    );
  }
}



class Login_1 extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(
            child: Text('다시 오셨네요'),
          ),
          Container(
            child: Image.asset('Image/charactor.jpg'),
          ),
          Container(
            child: const Column(children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '아이디 입력',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '비밀번호 입력',
                ),
              ),
            ]),
          ),
          Container(
            child: ElevatedButton(child: Text('확인'), onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Login_2()),);
            },),
          ),
          Container(
            child: Column(children: [
              Text('혹시 잊으셨다면'),
              Row(
                children: [
                  ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Find_ID()),);}, child: Text('아이디')),
                  ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Find_PW()),);}, child: Text('비밀번호'))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],)
          ),
          ]
        ),
      ),
    );
  }
}
class Login_2 extends StatelessWidget {
  const Login_2({super.key});
  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(
            child: Text('앗! 정보가 잘못 됐어요'),
          ),
          Container(
            child: Image.asset('Image/charactor.jpg'),
          ),
          Container(
            child: const Column(children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '아이디 처 입력',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '비밀번호도 처 입력',
                ),
              ),
            ]),
          ),
          Container(
            child: ElevatedButton(child: Text('확인'), onPressed: () {
              Navigator.pop(context);
            },),
          ),
          Container(
            child: Column(children: [
              Text('혹시 잊으셨다면'),
              Row(
                children: [
                  ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Find_ID()),);}, child: Text('아이디')),
                  ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Find_PW()),);}, child: Text('비밀번호'))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],)
          ),
          ]
        ),
      ),
    );
  }
}
class Find_ID extends StatelessWidget {
  const Find_ID({super.key});
  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(
            child: Text('적어주신 이메일로 아이디를 보내드릴께요'),
          ),
          const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '이메일 입력',
              ),),
          Container(
            child: ElevatedButton(child: Text('보내기'), onPressed: () {
              Navigator.pop(context);
            },),
          ),
          ]
        ),
      ),
    );
  }
}
class Find_PW extends StatelessWidget {
  const Find_PW({super.key});
  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(
            child: Text('적어주신 이메일로 비밀번호 재설정 링크를 보내드릴께요'),
          ),
          const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '이메일 입력',
              ),),
          Container(
            child: ElevatedButton(child: Text('보내기'), onPressed: () {
              Navigator.pop(context);
            },),
          ),
          ]
        ),
      ),
    );
  }
}
