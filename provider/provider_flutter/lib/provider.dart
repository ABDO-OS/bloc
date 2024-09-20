import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class prov_setstate extends StatefulWidget {
  sstry createState() => sstry();
}

class sstry extends State<StatefulWidget> {
  String name = "WELCOME";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Title(
          color: Colors.black,
          child: Text(
            'Provider',
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 500),
        child: Center(
          child: Column(
            children: [
              Title(
                  color: Colors.black,
                  child: Text(
                    '$name',
                    style: TextStyle(fontSize: 20),
                  )),
              MaterialButton(
                onPressed: () {
                  setState(() { // هنا دي بتعمل rebuild للمشروع كله و ده طبعا غلط لو المشروع كبير 
                    name = 'abdoo';
                    print(name);
                  });
                },
                height: 40,
                color: Colors.blue,
                child: Text(
                  'do something',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
