import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "< Contact Details ></>",style: TextStyle(fontSize: 25,color: Colors.white)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top:20),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.mail
                      ),
                    ),
                    FlatButton(onPressed: () => _launchURL('pailasaisrinivas7668@gmail.com','',''),
                      child: Text('pailasaisrinivas7668@gmail.com', style: TextStyle(fontSize: 20,color: Colors.white)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top:20),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                          Icons.phone
                      ),
                    ),
                    FlatButton(onPressed: () =>{},
                      child: Text('9121317668', style: TextStyle(fontSize: 20,color: Colors.white)),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
  _launchURL(String toMailId,  String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
