import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screen/quizintro.dart';
import 'package:quiz_app/services/home_fire.dart';
import 'package:quiz_app/services/localdb.dart';
import 'package:quiz_app/widgets/sidenavbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = "User Name";
  String money = "--";
  String lead = "---";
  String proUrl = "---";
  String level = "0";

  late List quizes;
  getUserDet() async {
    await LocalDB.getName().then((value) {
      setState(() {
        name = value.toString();
      });
    });
    await LocalDB.getMoney().then((value) {
      setState(() {
        money = value.toString();
      });
    });
    await LocalDB.getRank().then((value) {
      setState(() {
        lead = value.toString();
      });
    });
    await LocalDB.getUrl().then((value) {
      setState(() {
        proUrl = value.toString();
      });
    });
    await LocalDB.getLevel().then((value) {
      setState(() {
        level = value.toString();
      });
    });
  }

  getquiz() async {
    await HomeFire.getquizes().then((returned_quizes) {
      setState(() {
        quizes = returned_quizes;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getUserDet();
    getquiz();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KBC - Quiz App"),
      ),
      drawer: SideNav(name, money, lead, proUrl, level),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            fit: BoxFit.cover)),
                  ),
                ],
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.yellowAccent,
                      radius: 35,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top Player In This Week",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      // 16:20
                    ),
                    Text(
                      "Last Updated 5 Days Ago",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 50,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Aksh Raj",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Player ID - ADR5992",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Rs.55 Lakhs",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Text(
                "Unlock New Quizzes",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
              // 22:54
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizIntro(
                                      QuizName: (quizes)["quiz_name"],
                                      QuizAbout: "about",
                                      QuizDuration: "duration",
                                      QuizImgurl: "Quiz_thumbnail",
                                      QuizTopics: "topics",
                                    )));
                      },
                      child: Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Stack(
                          children: [
                            Card(
                              elevation: 8,
                              child: Container(
                                height: 150,
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Stack(
                  children: [
                    Card(
                      elevation: 8,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Image.network(
                          "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1632931612792-fbaacfd952f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            fit: BoxFit.cover)),
                  ),
                ],
                options: CarouselOptions(
                  height: 180,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 35,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 35,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 35,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      radius: 35,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 35,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "v1.0 Made By AKSH RAJ",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
