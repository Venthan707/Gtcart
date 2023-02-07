
import 'package:flutter/material.dart';

import 'DataModel/Model.dart';
import 'DataModel/gt.dart';
import 'az.dart';

class grid extends StatefulWidget {
  const grid({Key? key}) : super(key: key);

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: Colors.black87,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const az(),),
              );
            },
          ),
          backgroundColor: Colors.white70,
         centerTitle: true,
         title:Text("Laptopzone",style: TextStyle(
             color: Colors.black87
         ),),
        ),
        body: Container(
            color: Colors.white70,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child:
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 16/12,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: gts.length,
                  itemBuilder: (BuildContext , int index) {
                    return Card(
                      elevation: 5,
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(30)),
                        child:Column(
                          children: [
                            Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(gts[index].image,)),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(gts[index].text),
                            ),
                          ],
                        )
                      ),
                    );
                  }),
            ),
          ),
      ),
    );
  }
}
