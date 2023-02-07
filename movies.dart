import 'package:amazon_demo/MLT.dart';
import 'package:amazon_demo/az.dart';
import 'package:amazon_demo/movies/actordetails.dart';
import 'package:amazon_demo/movies/cast.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:readmore/readmore.dart';
import 'package:amazon_demo/color.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'movies/playlist.dart';

class movies extends StatefulWidget {
  const movies({Key? key}) : super(key: key);

  @override
  State<movies> createState() => _moviesState();
}

class _moviesState extends State<movies> {
  List<Actordetails> movielistpage= [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child:
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)?ResponsiveRowColumnType.COLUMN:
              ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  child: Column(
                    children: [
                      Container(
                        height: 340,
                        child: ListView.builder(
                          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                          itemCount: mlists.length,
                          itemBuilder: (BuildContext context, int index) {
                            return
                              Container(
                              height: 340,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.white.withOpacity(0.4), BlendMode.dstATop),
                                    image: AssetImage(
                                        mlists[index].backimage
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => const az()));
                                          },
                                          icon: Icon(
                                            Icons.arrow_back_sharp,
                                            color: Colors.white,
                                          )),
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.share_outlined,
                                            color: Colors.white,
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 180,
                                            child: Image(
                                                image: AssetImage(
                                                    mlists[index].poster))),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "Movie",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "Directer",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Music",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Language",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Actor",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Genre",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  ":",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  ":",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  ":",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  ":",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  ":",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  ":",
                                                  style:ss
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                        mlists[index].movie,
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  mlists[index].director,
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  mlists[index].music,
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                            mlists[index].language,
                                                  style:ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  mlists[index].actor,
                                                  style: ss
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Crime,Thriller",
                                                  style: ss
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    children: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.orange)),
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("WATCH NOW"),
                                              Icon(Icons.play_arrow_outlined)
                                            ],
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: Column(
                    children: [
                      Container(
                        height: 67,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: mlists.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                child: ReadMoreText(
                                  mlists[index].showtext,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200),
                                  trimLines: 2,
                                  textAlign: TextAlign.justify,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: "showmore>>",
                                  trimExpandedText: "<<showless",
                                  lessStyle: TextStyle(color: Colors.blue),
                                  moreStyle: TextStyle(color: Colors.blue),
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    height: 5,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: Row(
                    children: [
                      Text(
                        "Cast & crew",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: crew.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: (){
                                    showModalBottomSheet(context: context, builder: (BuildContext context)=>
                                      SingleChildScrollView(
                                        controller: ModalScrollController.of(context),
                                        child: Container(
                                          height: 400,
                                          child: Column(
                                            children: [
                                            ],
                                          ),
                                        ),
                                      ),);
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 50,
                                        backgroundColor: Colors.black,
                                        child: CircleAvatar(
                                          radius: 45,
                                          backgroundImage:
                                              AssetImage(crew[index].photto),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        crew[index].name,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )
                                    ],
                                  ),
                                );
                              })),
                    ],
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: Container(
                    height: 20,
                    child: ListView.builder(
                      physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                      itemCount: mlists.length,
                      itemBuilder: (BuildContext context, int index) {
                       return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              mlists[index].more,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const MLT(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "More>>",
                                  style: TextStyle(color: Colors.orange),
                                ))
                          ],
                        );
                      },
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: Column(
                    children: [
                      Container(
                          height: 300,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: playlist.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: ResponsiveRowColumnItem(rowFlex:1,
                                        child: Container(
                                          height: 260,
                                          width: 120,
                                          child: Image.asset(
                                            playlist[index].movie,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      playlist[index].name,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    )
                                  ],
                                );
                              })),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
