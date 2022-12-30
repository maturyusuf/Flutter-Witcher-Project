import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:witcherquiz/questionsPage.dart';
  
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  const MyHomePage({super.key, required this.title});

  final String title;
 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
String totalScore="";


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/wp1.jpg"), fit: BoxFit.fill))),
          Center(
            child: Column(
              
              children: [
              Container(
                  margin: EdgeInsets.only(top: 0),
                  height: height / 3,
                  width: width / 1.5,
                  child: Image.asset(
                    "images/witcher.png",
                    fit: BoxFit.fill,
                    scale: 2.5,
                  )),
              Container(
                
                  height: height / 3,
                  width: width/1.1,
                  child: Image.asset(
                    "images/gamelogo.png",
                    scale: 4,
                  )),
              Container(
                height: height / 6.5,
                width: width / 4,
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  onPressed: ()
                   async {
                    var scoreValue = await Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => questionsPage()));
                    setState(() {
                      totalScore = scoreValue;
                    });
                  },

                  child: Icon(
                    size: 100,
                    Icons.play_arrow_outlined,
                    color: Color.fromARGB(255, 138, 1, 1),
                  ),
                ),
              ),
              
          
              
            ]),
          ),
        Padding(
          padding: EdgeInsets.only(top: 30,left: 40),
          child: Text(totalScore,
            style: GoogleFonts.teko(
                fontSize: 80, color: Color.fromARGB(255, 133, 0, 0))),
        ),]),
      ),
    );
  }
}


