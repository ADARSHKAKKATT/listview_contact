import 'package:flutter/material.dart';

void main() {
  runApp(const Contact());
}

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List l1=["Peadar","Tiphany","Putnam","Pietro"];
  List l2=["Boronow","Mingshuihe","Ranchuelo","ciomas"];
  List l3=["P","T","P","P"];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("List view search",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search,
                  color: Colors.blue,),
                  suffixIcon: Icon(Icons.close,
                  color: Colors.blue,),
                ),
              ),
              SizedBox(height: 20,),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: l1.length, itemBuilder: (BuildContext context,int i){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    child: Row(
                      children: [

                        CircleAvatar(
                          radius: 60,
                          child: Text(l3[i]),
                        ),
                        Column(
                          children: [
                            Text(l1[i],
                            style: TextStyle(fontSize: 30),),
                            Text("City: ${l2[i]}"),
                          ],
                        )
                      ],
                    ),
                  ),
                );

              }

              ),

            ],
          ),
        ),
      ),
    );
  }
}

