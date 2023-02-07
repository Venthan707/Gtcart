import 'package:flutter/material.dart';

import 'DataModel/food.dart';

class getfunction extends StatefulWidget {
  late var DecorationImage;
  late var borderRadius;
  late var Text;

  getfunction({required this.Text,required this.DecorationImage,required this.borderRadius});

  @override
  State<getfunction> createState() => _getfunctionState();
}

class _getfunctionState extends State<getfunction> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

getfunction gf(){
  var indext;
  var image;
  return getfunction(Text: foods[indext].id,
      DecorationImage:image(foods[indext].image,),
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)));
}








//  import 'package:flutter/cupertino.dart';
//
// class Abc extends StatefulWidget {
//
//  late String text;
//       List<Widget> childern;
//
//  Abc({required this.text,required this.childern});
//
//   @override
//   State<Abc> createState() => _AbcState();
// }
//
// class _AbcState extends State<Abc> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//        Text(widget.text,),
//         Column(
//          children: widget.childern,
//         ),
//       ],
//     );
//   }
// }
//
// Abc v()
// {+
//  return Abc(text: 'hello', childern: [
//   Text('1'),
//   Text('1'),
//   Text('1'),
//   Text('1'),
//  ]);
// }
//
//
// class qwe extends StatelessWidget {
//   const qwe({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//      child: Column(
//       children: [
//        v(),
//        v(),
//       ],
//      ),
//     );
//   }
// }
