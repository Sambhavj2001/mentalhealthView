import 'package:flutter/material.dart';
import 'package:mentalhealth/util/emojis.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Sambhav!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '10 June, 2023',
                        style: TextStyle(
                          color: Colors.blue[200],
                        ),
                      ),
                    ],
                  ),

                  //notification
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              //search bar
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue[600],
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Text('Search'),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // how do you feel
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(height: 25),
              // emojis
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //bad
                  Emojiface(
                    emojiface: '😫',
                    text: 'Bad',
                  ),
                  //fine
                  Emojiface(
                    emojiface: '😄',
                    text: 'Fine',
                  ),
                  //well
                  Emojiface(
                    emojiface: '😇',
                    text: 'Well',
                  ),
                  //excellent
                  Emojiface(
                    emojiface: '😌',
                    text: 'Excellent',
                  ),
                ],
              ),
              SizedBox(height: 25),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[300],
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'EXERCISES',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        SizedBox(height: 20),

                        //list
                        Expanded(
                          child: ListView(
                            children: [
                              ExercisesList(
                                icon: Icons.favorite,
                                color: Colors.orange,
                                exerciseName: 'Speaking Skill',
                                noOfExercise: '16',
                              ),
                              ExercisesList(
                                icon: Icons.menu_book,
                                color: Colors.green,
                                exerciseName: 'Speaking Skill',
                                noOfExercise: '8',
                              ),
                              ExercisesList(
                                icon: Icons.star,
                                color: Colors.pink,
                                exerciseName: 'Speaking Skill',
                                noOfExercise: '20',
                              ),
                              ExercisesList(
                                icon: Icons.favorite,
                                color: Colors.lightGreenAccent,
                                exerciseName: 'Speaking Skill',
                                noOfExercise: '32',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        ],
      ),
    );
  }
}
