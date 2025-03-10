import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_ImageRoute();

}
class _ImageRoute extends State<ImageRoute>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Route"),
      ),
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.fromLTRB(30, 60, 30, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),color:  Colors.grey,border: Border.all(color: Colors.black,width: 2)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/download(1).jpg",width: 400)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 60),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),color:  Colors.grey,border: Border.all(color: Colors.black,width: 2)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/download.jpg",width: 400,)
              ],
            ),
          ),Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),color:  Colors.grey,border: Border.all(color: Colors.black,width: 2)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },style: ElevatedButton.styleFrom(fixedSize: Size(150, 70),shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3),side: BorderSide(color: Colors.black))), child: Text("Back",style: TextStyle(fontSize: 25,color: Colors.black),)),
              ],
            ),
          ),


        ],
      ),

    );
  }


}