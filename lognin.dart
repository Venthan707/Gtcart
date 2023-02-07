
import 'package:flutter/material.dart';

import 'az.dart';
import 'color.dart';

class lognin extends StatefulWidget {
  const lognin({Key? key}) : super(key: key);

  @override
  State<lognin> createState() => _logninState();
}

class _logninState extends State<lognin> {
  final cook = GlobalKey<FormState>();
  final home = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100,top: 80,right: 100),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 200,
                      child: Image.asset("assets/image/gt.jpg",fit: BoxFit.cover,),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 20,right: 20),
                child: Container(
                  child: Card(
                    elevation: 5.0,
                    color: Colors.grey.shade100,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Column(
                          children: [
                            Form(
                              key: home,
                              child: Container(
                                height:60,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      validator: (name){
                                        if(name==null){
                                          return "Enter the user name";
                                        }
                                      },
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          label :Text('Enter a user name',style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400
                                          ),),
                                          prefixIcon: Icon(Icons.person_pin,
                                            color:Colors.amber ,
                                            size: 20,)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),SizedBox(height: 10,),
                            Column(
                              children: [
                                Form(
                                  key: cook,
                                  child: Container(
                                    height: 60,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          validator: (pass) {
                                            if(pass==null)
                                              {
                                                return "Enter the password more then six";
                                              }
                                          },
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.lock_outlined,
                                              color:Colors.amber,
                                              size: 20,),
                                            border: OutlineInputBorder(),
                                            label:Text("Enter your password",style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400
                                            ),),
                                            suffixIcon: Icon(Icons.remove_red_eye_rounded,
                                              color:Colors.amber,
                                              size: 20,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  height:50,
                                  width:100,
                                  child: FloatingActionButton(
                                      elevation: 5.0,
                                      backgroundColor: Colors.amber,
                                      onPressed: (){
                                        final snackBar = SnackBar(content: Text("login successfully"));
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                        if(home.currentState!.validate())
                                        if(cook.currentState!.validate())
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const az()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          child: Text("Login",
                                            style:TextStyle(
                                              color: Colors.black,
                                              fontSize:10,
                                              fontWeight: FontWeight.w900,
                                            ) ,),
                                        ),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                   Image.asset("assets/deli.jpg"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
