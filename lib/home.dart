import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'connect.dart';
import 'dart:io';
class Home extends StatelessWidget {
  final skills=[
    'Flutter Developer' , 'Competative Programmer', 'Codechef Student Chapter Lead' , "done"
  ];
  final pics=[
    Image.asset('assets/images/flr.png'),Icon(Icons.developer_mode),Image.asset("assets/images/code1.png"),"done"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          //title: Text("Portfolio",style: TextStyle(fontSize: 30,color: Colors.white),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.laptop_mac),
              color: Colors.white,
              onPressed: ()=> {},
            )
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: ()=>exit(0) ,
          ),
        ),
        body:Container(
          // width: 400,
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only( bottom: 30),
                  child:Text("< Hello Developers ></>",style: TextStyle(fontSize: 25, color: Colors.white,),)
              ),
              CircleAvatar(
                  maxRadius: 130,
                  backgroundImage: AssetImage("assets/images/img.jpeg")
              ),
              Padding(
                padding: const EdgeInsets.only(top:40.0,bottom: 20),
                child: Text("< Paila Venkata Sai Srinivas ></>",style: TextStyle(fontSize: 25,color: Colors.white),),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (_,int index)=>ResC(skills[index],pics[index]),
                  itemCount: skills.length,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
class ResC extends StatelessWidget {
  final sk,pic;
  ResC(this.sk,this.pic);
  @override
  Widget build(BuildContext context) {
    if(sk!="done"){
      return Padding(
        padding: const EdgeInsets.only(top: 10,left: 20),
        child: ListTile(
          leading: CircleAvatar(
            child: pic,
          ),
          title: Text(sk,style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
      );
    }
    else{
      return Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Connect()),
                  );
                },
                child:Text(
                  "< Connect with me ></>",
                  style: TextStyle(color:Colors.white,fontSize: 20,fontStyle: FontStyle.italic),
                ),
        ),
      );
    }
  }
}

