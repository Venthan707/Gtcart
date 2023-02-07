import 'package:amazon_demo/tabs/post.dart';
import 'package:amazon_demo/tabs/reels.dart';
import 'package:amazon_demo/tabs/tag.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'DataModel/gt.dart';
import 'az.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> with TickerProviderStateMixin {
  late TabController _tabController;
  final topTabs = [
    post(),
    reels(),
    tag()
  ];

  get innerBoxIsScrolled => true;
  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length:topTabs.length, vsync: this);
    return SafeArea(
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body:NestedScrollView(
                headerSliverBuilder:(context,isScrolled){
                  return [
                    SliverAppBar(
                      expandedHeight: 470,
                      pinned: true,
                    floating:false,
                    actions: [
                    Icon(Icons.notifications_none_rounded,color: Colors.black87,size: 25,),
                    SizedBox(width: 25,),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.more_vert,color: Colors.black87,size: 25,),
                    )
                    ],
                    leading: IconButton(
                      color: Colors.black87,
                      icon: Icon(Icons.arrow_back_sharp,size: 25,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const az(),),
                        );
                      },
                    ),
                    backgroundColor: Colors.white,
                    title:Text("village food factory ",style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,letterSpacing: .3,
                    ),),
                      forceElevated: innerBoxIsScrolled,
                      flexibleSpace:FlexibleSpaceBar(
                        background: Container(
                        child:  Padding(
                          padding: const EdgeInsets.only(top: 45.0,left: 9,right: 9),
                          child:
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [CircleAvatar(
                                      radius: 42,
                                      backgroundColor: Colors.red,
                                      child:CircleAvatar(
                                        radius: 40,
                                        backgroundImage:AssetImage("assets/vff.jpg") ,
                                      ) ,
                                    )
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Column(
                                      children: [
                                        Text("1,500",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                        Text("post",style: TextStyle(fontSize: 15),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 25,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Column(
                                      children: [
                                        Text("500K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                        Text("Followers",style: TextStyle(fontSize: 15),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 25,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Column(
                                      children: [
                                        Text("100",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                        Text("Following",style: TextStyle(fontSize: 15),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(height: 4,),
                                      Row(
                                        children: [
                                          Text("village food factory",style: TextStyle(
                                              fontWeight: FontWeight.w600
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),SizedBox(height: 4,),
                                  Row(
                                    children: [
                                      Text("தனி ஒரு மனிதனுக்கு உணவில்லை எனில்\nஇந்த ஜகத்தினை அழித்திடுவோம்\nFor Business Collaboration: +91 89256 47880"),
                                    ],
                                  ),SizedBox(height: 4,),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("See translation",style: TextStyle(
                                              fontWeight: FontWeight.w600
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("leegifts.in/?_source=insta&utm_campaign=vff_Dec7",style: TextStyle(
                                              color: Colors.blue.shade900
                                          ),),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage("assets/vcc.jpg"),
                                      ),
                                    ],
                                  ),
                                  Row(children: [
                                    Text("Followed by hihop_venthan,lovely_boy_sathish\n and 8 others")
                                  ],)
                                ],
                              ),SizedBox(height: 6,),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 150,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                          color: Colors.grey.shade200,),
                                        child: Center(child: Text("Following ",style: TextStyle(fontWeight: FontWeight.w500),)),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 6,),
                                  Column(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 120,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                          color: Colors.grey.shade200,),
                                        child: Center(child: Text("Message",style: TextStyle(fontWeight: FontWeight.w500),)),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 6,),
                                  Column(
                                    children: [
                                      Container(
                                          height: 35,
                                          width: 50,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey.shade200,),
                                          child: Icon(Icons.person_add_outlined)
                                      )
                                    ],
                                  ),
                                ],
                              ),SizedBox(height: 10,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      radius: 38,
                                      backgroundImage: AssetImage("assets/seafood/prawn.jpg"),
                                    ),
                                  ),SizedBox(width: 4,),
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      radius: 38,
                                      backgroundImage: AssetImage("assets/seafood/lobsters.jpg"),
                                    ),
                                  ),SizedBox(width: 4,),
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      radius: 38,
                                      backgroundImage: AssetImage("assets/seafood/vanjaramfishfry.jpg"),
                                    ),
                                  ),SizedBox(width: 4,),
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      radius: 38,
                                      backgroundImage: AssetImage("assets/seafood/fishcurry.jpg"),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      ),
                      bottom:  TabBar(
                      controller: _tabController,
                      tabs: [
                        Tab(icon: Icon(Icons.grid_on,color: Colors.black,),),
                        Tab(icon: Icon(Icons.video_library_outlined,color: Colors.black,),),
                        Tab(icon: Icon(Icons.person_pin_outlined,color: Colors.black,),),
                      ],),
                  ),
                  ];
                },
                body:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    controller: _tabController,
                    physics: BouncingScrollPhysics(),
                    dragStartBehavior: DragStartBehavior.down,
                    children: [
                      post(),
                      reels(),
                      tag()
                    ],
                  ),
                )
            ),
          )
      ),
    );
  }
}




