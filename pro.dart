import 'package:amazon_demo/DataModel/seafood.dart';
import 'package:amazon_demo/az.dart';
import 'package:amazon_demo/ex1.dart';
import 'package:amazon_demo/ex2.dart';
import 'package:flutter/material.dart';
import 'DataModel/food.dart';



class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  get orientation => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        excludeHeaderSemantics: true,
        leadingWidth: 10,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Container(
          height: 35,
          width: 280,
          color: Colors.white12,
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: Icon(Icons.search),
              label: Text("Search Recipes....,",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                color: Colors.grey.shade500
              ),),
            ),
          ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(Icons.account_circle_rounded,color: Colors.grey,size: 35,),
        )],
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 6,left: 6),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                          children: [
                            Container(
                              height: 170,
                                width: 370,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/image/biryani.jpg"),
                                      fit:BoxFit.fill,),borderRadius: BorderRadius.vertical(top: Radius.circular(15),)
                                ),
                        ),
                            SizedBox(height: 1.5,),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),color: Colors.black,),
                              height: 80,
                              width: 370,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 22.0,left: 10),
                                      child: Column(
                                        children: [
                                          Text("Quick One Pot Meals",style:
                                          TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: .8
                                          ),),
                                          SizedBox(height: 4,),
                                          Column(
                                            //mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Minimum effort. Maximum taste",style: TextStyle(
                                                color: Colors.grey.shade500,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                letterSpacing: .5
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: Container(
                                            child: TextButton(onPressed: (){},style:TextButton.styleFrom(side: BorderSide(width:1,color: Colors.white),) ,
                                              child: Text("22 Recipes  ➔",style: TextStyle(
                                              color: Colors.white,
                                            ),),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                            ),
                          ],
                      )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Recently Added",style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: Row(
                              children: [
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const exone(),),);
                                },
                                    child:Row(
                            children: [
                              Text("Explore more",style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),),Icon(Icons.arrow_circle_right,color: Colors.red,)
                            ],
                          )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Container(
                      height:200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: foods.length,
                          itemBuilder: (BuildContext context,int index){
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                child:Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(foods[index].image,),
                                            fit: BoxFit.fill,
                                          ),borderRadius: BorderRadius.circular(15)
                                      ),
                                      height: 140,
                                      width: 140,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(foods[index].id,style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal
                                      ),),
                                    ),
                                    Column(
                                      children: [
                                        Text(foods[index].text,style: TextStyle(
                                            color: Colors.grey.shade500
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sea Foods",style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16
                          ),),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Row(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const extwo(),),);
                                    }, child:Row(
                                          children: [
                                            Text("Explore more",style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                            ),),Icon(Icons.arrow_circle_right,color: Colors.red,)
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Container(
                      height:220,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: sea.length,
                          itemBuilder: (BuildContext context,int index){
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                child:Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(sea[index].image,),
                                            fit: BoxFit.fill,
                                          ),borderRadius: BorderRadius.circular(15)
                                      ),
                                      height: 140,
                                      width: 140,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(sea[index].id,style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal
                                      ),),
                                    ),
                                    Column(
                                      children: [
                                        Text(foods[index].text,style: TextStyle(
                                          color: Colors.grey.shade500
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0,left: 8),
                    child: Row(
                      children: [
                        Text("Ingredients",style: TextStyle(
                            fontWeight: FontWeight.w900
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 201,
                  color: Colors.grey.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: foods.length,
                        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 10,
                        ),
                        itemBuilder: (Context, indext){
                          return Column(
                            children: [
                              CircleAvatar(
                                radius: 29,
                                backgroundColor: Colors.red,
                                backgroundImage: AssetImage(foods[indext].image),
                              ),
                              Text(foods[indext].id),
                            ],
                          );
                        }
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Container(
                      height: 350,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (BuildContext context,int index){
                            return Container(
                              child:Column(
                                children: [
                                  Container(
                                    height: 350,
                                    width: 260,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100,),
                                          width: 245,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  height: 60,
                                                  child:Text("Today Special Masala Gravy \n Recipe",style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w800
                                                  ),)
                                                ),
                                              ),SizedBox(height: 2,),
                                              Card(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Container(
                                                    height: 80,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          width:90,
                                                            decoration: BoxDecoration(
                                                    image: DecorationImage(image: AssetImage("assets/seafood/fishfrry.jpg"),
                                                    fit:BoxFit.fill,),borderRadius: BorderRadius.circular(10)
                                                        )),
                                                        SizedBox(width: 10,),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text("Butter Fried Fish",style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                            ),),
                                                            Row(
                                                              children: [
                                                                Text("Total Time :30 mins",style: TextStyle(
                                                                  fontSize: 12,color: Colors.grey.shade500,
                                                                ),)
                                                              ],
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 2,),
                                              Card(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Container(
                                                    height: 80,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                            width:90,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(image: AssetImage("assets/seafood/prawnfry.jpg"),
                                                                  fit:BoxFit.fill,),borderRadius: BorderRadius.circular(10)
                                                            )),
                                                        SizedBox(width: 10,),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text("Butter Prawn Fry",style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                            ),),
                                                            Row(
                                                              children: [
                                                                Text("Total Time :25 mins",style: TextStyle(
                                                                  fontSize: 12,color: Colors.grey.shade500,
                                                                ),)
                                                              ],
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 2,),
                                              Card(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Container(
                                                    height: 80,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                            width:90,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(image: AssetImage("assets/seafood/vanjaramfishfry.jpg"),
                                                                  fit:BoxFit.fill,),borderRadius: BorderRadius.circular(10)
                                                            )),
                                                        SizedBox(width: 10,),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text("vanjaram Fish Fry",style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                            ),),
                                                            Row(
                                                              children: [
                                                                Text("Total Time :20 mins",style: TextStyle(
                                                                  fontSize: 12,color: Colors.grey.shade500,
                                                                ),)
                                                              ],
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                      ),
                    )
                  ],
                ),
              )
              ],
          )
          ),
        );
  }
}
