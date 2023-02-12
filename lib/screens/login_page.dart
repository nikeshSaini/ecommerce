import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  bool _obsureText =false;
  final _formKey = GlobalKey<FormState>();
  int time =1;

  moveTohome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: time));
      await Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Image.asset("assets/images/hey.png",
                fit: BoxFit.cover,),
              Container(
                child: Text("Welcome", style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  fontFamily: GoogleFonts.lato().fontFamily,
                ),),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 16),
                  child:Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          suffix:Icon(Icons.email,color: Colors.blue.shade200,),
                          hintText: "Enter Username",
                          label: Text("Username"),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please Enter the username";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: !_obsureText,
                        decoration: InputDecoration(
                          suffix: IconButton(
                              icon: Icon(_obsureText?Icons.visibility : Icons.visibility_off,color: Colors.blue.shade200,),
                          onPressed: (){
                                setState(() {
                                  _obsureText = !_obsureText;
                                });
                          },),
                          hintText: "Enter Password",
                          label: Text("Password"),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password cannot be empty";
                          }
                          else if(value.length <6){
                            return "Password is too short, Please try again";
                          }
                          return null;
                        },
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20,),
              Material(
                color: changeButton
                    ?Colors.purple.shade200
                     :Colors.purple.shade400,
                borderRadius:
                BorderRadius.circular(changeButton? 50 :8),

                child: InkWell(
                  onTap: () => moveTohome(context),
                  splashColor: Colors.grey.shade50,
                  child: AnimatedContainer(
                    width: changeButton?50 :120,
                    height: 50,
                    // alignment: Alignment.center,
                    child: changeButton
                        ?Icon(Icons.done, color: Colors.white,)
                        :Center(
                          child: Text("Login", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),),
                        ),

                    duration: Duration(seconds: time),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
