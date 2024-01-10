import 'package:flutter/material.dart';

class QuizIntro extends StatelessWidget {
  String QuizName;
  String QuizImgurl;
  String QuizTopics;
  String QuizDuration;
  String QuizAbout;
  QuizIntro(
      {required this.QuizName,
      required this.QuizAbout,
      required this.QuizDuration,
      required this.QuizImgurl,
      required this.QuizTopics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Text(
          "START QUIZ",
          style: TextStyle(fontSize: 20),
        ),
      ),
      appBar: AppBar(
        title: Text("KBC QUIZ APP"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      QuizName,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Image.network(
                QuizImgurl,
                fit: BoxFit.cover,
                height: 230,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Related To -",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      QuizTopics,
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Duration -",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      QuizDuration,
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "About Quiz -",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      QuizAbout,
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
