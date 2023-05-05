import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Same Image'),
        backgroundColor: Colors.indigo[800],
        centerTitle: true,

      ),

body:

ImagePage(


),

      ),
    ));


}
class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber=2 ;
  int rightImageNumber=5;

  void changeImage (){
    leftImageNumber=Random().nextInt(5)+1;
    rightImageNumber=Random().nextInt(5)+1;

  }


  @override
  Widget build(BuildContext context) {




    return Column(mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Text(leftImageNumber == rightImageNumber ? 'You won ' : 'TryAgain',
        style: TextStyle(fontSize: 32,
            fontWeight: FontWeight.bold,color:
        Colors.white),),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(

                child: TextButton(onPressed: () {
                  setState(() {
                    changeImage();
                  });

                },
                child: Image.asset('gamephotos/image-$leftImageNumber.jpg')),
              ),

              Expanded(
                child:TextButton(onPressed: () {
                  setState(() {
                    changeImage();
                  });

                },
                child: Image.asset('gamephotos/image-$rightImageNumber.jpg')),
              ),


            ],
          ),
        ),
      ],
    );

  }
}
