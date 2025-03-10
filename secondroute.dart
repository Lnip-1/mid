import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imageroute.dart';

class Secondroute extends StatefulWidget {
  final name;
  final mobile;
  
  const Secondroute({super.key, required  this.name, required this.mobile});

  @override
  State<Secondroute> createState() => _SecondrouteState();
}

class _SecondrouteState extends State<Secondroute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Column(
        children: [
          Row(
            children: [Expanded(child:  Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              alignment: Alignment.center,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),border: Border.all(color: Colors.black,width: 2)
              ),
              child:
              Text("name this: ${widget.name}"+"\n"+"Mobile this: ${widget.mobile}",style: TextStyle(fontSize: 20),),
            ))],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 60, 30, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),color:  Colors.grey,border: Border.all(color: Colors.black,width: 2)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(fixedSize: Size(100, 50),shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3),side: BorderSide(color: Colors.black))), child: Text("Google",style: TextStyle(fontSize: 15,color: Colors.black),)),


                IconButton(onPressed: (){},style: IconButton.styleFrom(fixedSize: Size(100, 50),shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3),side: BorderSide(color: Colors.black)),backgroundColor: Colors.white), icon: Icon(Icons.wifi_calling_3_sharp,size: 30,))
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),color:  Colors.grey,border: Border.all(color: Colors.black,width: 2)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }
                    ,style: IconButton.styleFrom(fixedSize: Size(100, 50),shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3),side: BorderSide(color: Colors.black)),backgroundColor: Colors.white), icon: Icon(Icons.login_outlined,size: 30,)),

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageRoute()));

                }
                    ,style: ElevatedButton.styleFrom(fixedSize: Size(100, 50),shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3),side: BorderSide(color: Colors.black))), child: Text("Image",style: TextStyle(fontSize: 15,color: Colors.black),)),
              ],
            ),
          ),


        ],
      ),

    );
  }
}
