import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Consume extends StatefulWidget {
  cons createState() => cons();
}

class cons extends State<StatefulWidget> {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Title(
            color: Colors.black,
            child: Text(
              'Provider',
            ),
          ),
        ),

        
        body: Builder(
          builder: (context) {
            var changenamebuilder = Provider.of<Model>(context);
            var changenumbuilder = Provider.of<Model>(context,listen:false);
            return ListView(
              children: [     
                     Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 140),
                                Title(
                                    color: Colors.black,
                                    child: Text(
                                      changenamebuilder.name,
                                      style: TextStyle(fontSize: 25),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                     onPressed: () {
                    changenamebuilder.changeName();
                      print(Model);
                    },
                    height: 40,
                    color: Colors.blue,
                    child: Text(
                      'change name',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  Column(
                      children: [
                        // Title(
                        //   color: Colors.black,
                        //   child: Text(
                        //    context.watch<Model>().number as String,
                        //     style: TextStyle(fontSize: 25),
                        //   ),
                        // ),
                      ],
                    ),


                    MaterialButton(
                    onPressed: () {
                      changenumbuilder.changenum();
                      print(Model);
                    },
                    height: 40,
                    color: Colors.blue,
                    child: Text(
                      'change number',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
               
/****************************************************************************************/
              
                
                // Selector<Model, String>(
                //   selector: (context, name) => name.getname,
                //   builder: (context, value, child) {
                //     print("first");
                //     return Padding(
                //       padding: EdgeInsets.only(top: 100),
                //       child: Center(
                //         child: Column(
                //           children: [
                //             Row(
                //               children: [
                //                 SizedBox(width: 140),
                //                 Title(
                //                     color: Colors.black,
                //                     child: Text(
                //                       value,
                //                       style: TextStyle(fontSize: 25),
                //                     )),
                //               ],
                //             ),
                //           ],
                //         ),
                //       ),
                //     );
                //   },
                // ),
                // Consumer<Model>(builder: (context, Model, child) {
                //   return MaterialButton(
                //     onPressed: () {
                //       Model.changeName();
                //       print(Model);
                //     },
                //     height: 40,
                //     color: Colors.blue,
                //     child: Text(
                //       'change name',
                //       style: TextStyle(fontSize: 20),
                //     ),
                //   );
                // }),
                // Selector<Model, int>(
                //   selector: (context, number) => number.getnumber,
                //   builder: (context, value, child) {
                //     print("secound");
                //     return Column(
                //       children: [
                //         Title(
                //           color: Colors.black,
                //           child: Text(
                //             "$value",
                //             style: TextStyle(fontSize: 25),
                //           ),
                //         ),
                //       ],
                //     );
                //   },
                // ),
                // Consumer<Model>(builder: (context, Model, child) {
                //   return MaterialButton(
                //     onPressed: () {
                //       Model.changenum();
                //       print(Model);
                //     },
                //     height: 40,
                //     color: Colors.blue,
                //     child: Text(
                //       'change number',
                //       style: TextStyle(fontSize: 20),
                //     ),
                //   );
                // }),
              ],
            );
          }
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  String name = 'welcome';
  int number = 0;

  String get getname => name;
  int get getnumber => number;
  changeName() {
    name = 'abdoo';
    notifyListeners(); // دي بتعمل اعادة بناء للconsumer فقط و دي ميزه في الااداءء
  }

  changenum() {
    number++;
    notifyListeners();
  }
}
