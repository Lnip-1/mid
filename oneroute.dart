import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/secondroute.dart';

class Oneroute extends StatefulWidget {

  final usercntroller=TextEditingController();
  final mobilecntroller=TextEditingController();
  late String show='';
  @override
  State<Oneroute> createState() => _OnerouteState();
}
class _OnerouteState extends State<Oneroute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('One Route'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: Colors.grey,
                border: Border.all(color: Colors.black,width: 2)
              ),
              child: Column(
                children: [


                  TextField(
                    controller: widget.usercntroller,
                    decoration:InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Name',
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                    ),
                  ),

                  SizedBox(height: 15),

                  TextField(
                    controller: widget.mobilecntroller,
                    decoration:InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Mobile',
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20,40,20,40),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: Colors.grey,
                  border: Border.all(color: Colors.black,width: 2)
              ),
              child: Row(
                children: [

                  SizedBox(width: 50),

                  ElevatedButton(onPressed: (){
                    if(widget.usercntroller.text=='name'&&widget.mobilecntroller.text=='mobile'){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Secondroute(name:widget.usercntroller.text,mobile:widget.mobilecntroller.text)));
                    }else if(widget.usercntroller.text.isEmpty||widget.mobilecntroller.text.isEmpty){
                      setState(() {
                        widget.show="رقم الهاتف او الاسم فارغ";
                      });
                    }else{
                      widget.show=' تاكد من الاسم ورقم الهاتف  ';
                    }
                  },
                      style: ElevatedButton.styleFrom(fixedSize: Size(90, 50),
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3),
                              side: BorderSide(color: Colors.black))),
                      child: Text("Login",style: TextStyle(fontSize: 15,
                          color: Colors.black))),

                  SizedBox(width: 20),

                  ElevatedButton(onPressed: (){
                    exit(0);
                  },style: ElevatedButton.styleFrom(fixedSize: Size(90, 50),
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3),
                          side: BorderSide(color: Colors.black))),
                      child: Text("Close",style: TextStyle(fontSize: 15,color: Colors.black))
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [Expanded(child: Container(
                  margin: EdgeInsets.fromLTRB(30, 70, 30, 0),
                  alignment: Alignment.center,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2)),color: Colors.grey,border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: 
                  Text('${widget.show}',style: TextStyle(fontSize: 10),),
                ))],
              ),
            )

          ],
        ),
      ),
    );
  }
}
