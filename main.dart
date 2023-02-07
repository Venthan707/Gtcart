import 'package:amazon_demo/movies.dart';
import 'package:amazon_demo/responsive.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'lognin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,widget)=> ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          maxWidth: 1700,
          minWidth: 350,
          defaultScale: true,
      breakpoints: const [ResponsiveBreakpoint.autoScale(350,name: MOBILE),
        ResponsiveBreakpoint.autoScale(1000,name: TABLET),
        ResponsiveBreakpoint.autoScale(1200,name: DESKTOP),
        ResponsiveBreakpoint.autoScale(1700, name: 'XL')
      ]
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 10,
          splash: Image.asset("assets/image/gt.jpg",),
          nextScreen: lognin(),
          backgroundColor: Colors.white),
    );
  }
}


class Val extends StatefulWidget {
  const Val({Key? key}) : super(key: key);

  @override
  State<Val> createState() => _ValState();
}

class _ValState extends State<Val> {


  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(

      key: _formkey,

        child: Column(
          children: [
            TextFormField(
              validator: (value)
              {
                if(value == null || value.isEmpty)
                  {
                    return 'please enter the name';
                  }
              },
            ),
            ElevatedButton(onPressed: (){
              if(_formkey.currentState!.validate())
                {
                  Text("done");
                }

            }, child: Text("hello"))
          ],
        ));
  }
}
