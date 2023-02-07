import 'package:amazon_demo/az.dart';
import 'package:amazon_demo/pro.dart';
import 'package:flutter/material.dart';

import 'DataModel/seafood.dart';

class extwo extends StatelessWidget {
  const extwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Text("Sea Foods",style: TextStyle(
              color: Colors.black87,
            fontSize: 16
          ),),
          elevation: 2,
          backgroundColor: Colors.white70,
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (contax)=>const az() ));
          },color: Colors.black87,),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 370,
            child: GridView.builder(
                physics: PageScrollPhysics(),
                itemCount: sea.length,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                ),
                itemBuilder: (Context, indext){
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(sea[indext].image,),
                              fit: BoxFit.cover,
                            ),borderRadius: BorderRadius.vertical(top: Radius.circular(10))
                        ),
                        height: 120,
                        width: 160,
                      ),
                      SizedBox(height: .5,),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),color: Colors.black,),
                        height: 40,
                        width: 160,
                        child: Center(
                          child: Text(sea[indext].id,style: TextStyle(
                              color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500
                          ),),
                        ),
                      )
                    ],
                  );
                }
            ),
          ),
        ),
      ),
    );
  }
}
