import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BizCard',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
        centerTitle: true,
        backgroundColor: Colors.brown,

      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar(),

          ],
        )
      )
    );
  }

  Container _getCard() {
    return Container(
      width: 300,
      height: 150,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(14.5)

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Text('Name:Muskan Bhandari',
          style: TextStyle(
            color: Colors.white
          ),),
          Text('Making apps with Flutter',style: TextStyle(
              color: Colors.white
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.verified_user,color: Colors.blue,),
              Text('T:@bhandari9',style: TextStyle(
                  color: Colors.white
              ),),
            ],
          )
        ],

      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent,width: 1.2),
        // image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),fit: BoxFit.cover)
      ),
    );
  }
}

