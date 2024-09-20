import 'package:flutter/material.dart';
import 'package:language_app/models/numbers.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
   Item({Key? key, required this.num}) : super(key: key);
  final Number num;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: const Color.fromRGBO(255, 152, 0, 1),
      child: Row(
        children: [
        num.image == null ? SizedBox():  Container(
              color: Color.fromARGB(255, 245, 219, 191),
              child: Image.asset(num.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(num.jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                Text(num.enName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Spacer(
            flex: 20,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
             player.play(AssetSource(num.sounds));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            /* child: GestureDetector(
                onTap: (){},
                child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
                   ),
              ),*/
          ),
        ],
      ),
    );
  }
}
class cont extends StatelessWidget{
  const cont({super.key, required this.num}); 
    final Number num;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(num.jpName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(num.enName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 20,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
             player.play(AssetSource(num.sounds));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
      ],
    );
  }
 
  
}