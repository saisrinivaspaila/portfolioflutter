import 'package:flutter/material.dart';

class Connect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          //title: Text("Portfolio",style: TextStyle(fontSize: 30,color: Colors.white),),
          // ,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body:Container(
          color: Colors.black,
        )
    );
  }
}
