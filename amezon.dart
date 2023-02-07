
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'DataModel/Model.dart';
import 'grid.dart';


class amezon extends StatefulWidget {
  const amezon({Key? key}) : super(key: key);

  @override
  State<amezon> createState() => _amezonState();
}

class _amezonState extends State<amezon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 5.0,
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(child:
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Icon(Icons.search_outlined),
                       Text("Search Gtkart.in",style: TextStyle(
                         color: Colors.grey.shade500,
                       ),),
                       Icon(Icons.camera),
                     ],
                   )

                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Container(
                  color: Colors.white,
                  height: 100,
                  child:
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Models.length,
                      itemBuilder: (BuildContext context,int index){
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child:Column(
                              children: [
                                Container(
                                  color: Colors.grey.shade300,
                                    height: 65,
                                    width: 80,
                                    child: Image.asset(Models[index].image,fit: BoxFit.fill,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(Models[index].id,style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 11,
                                    color: Colors.black26
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 345,
                      color: Colors.white70,
                      child: Text("Offers Available Today..",
                          style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1,),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Container(
                  color: Colors.white,
                  child:
                  CarouselSlider.builder(
                    options: CarouselOptions(
                        aspectRatio: 3/2,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 4)
                    ),
                   itemCount: Models.length,
                    itemBuilder: (context,index,realIndex){
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(

                          margin: EdgeInsets.symmetric(horizontal: 4),
                          child: Image.asset(Models[index].image,fit: BoxFit.fill,),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    color: Colors.white70,
                    height: 32,
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Electronic items",style: TextStyle(fontSize: 16),),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const grid(),),
                            );
                          },

                            child: Text("More>>>",style: TextStyle(color: Colors.orangeAccent),))
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0,right: 3),
                child: Container(
                  color: Colors.white70,
                  height: 360,
                  width: 400,
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                    Card(
                        elevation: 9,

                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10,right: 5,left: 5),
                          child: Container(child: Image.asset("assets/iphone14.jpg"),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:20.0),
                          child: Text("Iphone 14"),
                        )
                      ],
                    )),
                    Card(
                        elevation:9,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(child: Image.asset("assets/camera.jpg"),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Text("Canan Camera"),
                        )
                      ],
                    )),
          Card(elevation:9,
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(child: Image.asset("assets/firestrick.jpg"),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40.0),
                child: Text("Fire Strick"),
              )
            ],
          )),
          Card(elevation:9,
              child: Column(
          children: [
          Padding(
          padding: const EdgeInsets.only(top: 10.0,right: 15,left: 15),
      child: Container(child: Image.asset("assets/speaker.jpg")),
    ),
    Padding(
    padding: const EdgeInsets.only(top:0.0),
    child: Text("Speaker"),
    )
    ],
    )),
                  ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,mainAxisSpacing:0.1,crossAxisSpacing: 0.1),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}






