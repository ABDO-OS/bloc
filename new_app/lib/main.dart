
import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
   int teamA = 0;
   int teamB = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points counter',
            style: TextStyle (color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[                
                Column(                
                  children: [                    
                    // Team A   
                    const SizedBox(
                      height: 80,
                    ),      
                    const Text('Team A', style: TextStyle(fontSize: 35)),
                    Text('$teamA', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      onPressed: (){                            
                        setState((){
                          teamA++;
                        });
                           print(teamA);
                      },
                    child: const Text('Add 1 point', style: TextStyle(color: Colors.black, fontSize: 15)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),),
                    ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                                     
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA +=2;
                        });
                          print(teamA);
                      },
                    child: const Text('Add 2 point', style: TextStyle(color: Colors.black, fontSize: 15)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),),
                    ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA +=3;
                        });
                          print(teamA);
                      },
                    child: const Text('Add 3 points', style: TextStyle(color: Colors.black, fontSize: 15)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),),
                    ),
                    ),
                  ],
                ),

             const SizedBox(
               //width: 50,
               height: 525,              
               child: VerticalDivider(
                 thickness: 2,  
                 indent: 80,
                 endIndent: 1,             
               ),
             ),
                
                // Team B                
                Column(                
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    const Text('Team B', style: TextStyle(fontSize: 35)),
                    Text('$teamB', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamB++;
                        });                        
                          print(teamB);
                      },
                      child: const Text('Add 1 point', style: TextStyle(color: Colors.black, fontSize: 15)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),),
                      ),
                    ),
                    const SizedBox(
                        height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamB +=2;
                        });
                          print(teamB);
                      },
                      child: const Text('Add 2 point', style: TextStyle(color: Colors.black, fontSize: 15)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),),
                      ),
                    ),
                    const SizedBox(
                        height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                         setState(() {
                          teamB +=3;
                        });
                          print(teamB);
                      },
                      child: const Text('Add 3 points', style: TextStyle(color: Colors.black, fontSize: 15)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),),
                      ),
                    ),
                  ],
                ),
               ],
             ),
             
                    const SizedBox(
                      height: 150,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA = 0;
                          teamB = 0;
                        });
                          print(teamA);
                          print(teamB);
                      },
                    child: const Text('Clear', style: TextStyle(color: Colors.black, fontSize: 15)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(200, 50),
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}