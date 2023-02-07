
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




TextStyle ss = const TextStyle(
    color: Colors.white70,
    fontSize: 12,
    fontWeight: FontWeight.w500);



class Model2{
  String? showtext;
  String? backimage;
  String? poster;
  String? more;
  String? movie;
  String? director;
  String? music;
  String? language;
  String? actor;
  String? genre;

  Model2(this.backimage,this.more,this.poster,this.showtext,this.movie,this.director,this.music,this.language,this.actor,this.genre);
}

List mlists = mlist.map((e)=> Model2(e['backimage'],e['more'],e['poster'],e['showtext'],e['movie'],e['director'],e['music'],e['language'],e['actor'],e['genre'])).toList();

var mlist = [
  {'backimage':'assets/movies/thunivu.jpg',
    'more':'More Like This',
    'poster':'assets/movies/thala.jpg',
    'showtext':'Thunivu ( transl. Fortitude) is an upcoming Indian Tamil-language action thriller film written and directed by H. Vinoth, and produced by Boney Kapoor.A criminal mastermind and his team form a plan and commit bank heists across Chennai, but the motive of their heists remains mysterious.',
     'movie':'Thunivu',
    'director':"H.vinoth",
    'music':"Gbiran",
    'language':"Tamil",
    'actor':"Ajith Kumar",
    'genre':'Crime & Thriller'
  },
];

