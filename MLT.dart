import 'package:amazon_demo/az.dart';
import 'package:amazon_demo/movies.dart';
import 'package:amazon_demo/movies/playlist.dart';
import 'package:flutter/material.dart';

class MLT extends StatefulWidget {
  const MLT({Key? key}) : super(key: key);

  @override
  State<MLT> createState() => _MLTState();
}

class _MLTState extends State<MLT> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,
          leading:IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>const az()));
           }, icon:Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
        ),
        backgroundColor: Colors.black,
        body:Container(
          child: GridView.builder(
              itemCount: playlist.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: 2/3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context,index){
                return Container(
                  child: Image.asset(playlist[index].movie,fit: BoxFit.fill,),
                );
              }),
        ),
      ),
    );
  }
}
