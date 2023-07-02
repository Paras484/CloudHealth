import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.all(20),
              child: Image.asset("assets/doctors.png"),
              ),
              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: InkWell(onTap: (){
                      if(passToggle == true){
                        passToggle = false;
                      }
                      else{
                        passToggle = true;
                      }
                      setState(() {
                      },
                      );
                    },
                      child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye_fill)
                    )
                  ),
                ),
              ),
             // SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        //  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Padding(padding: EdgeInsets.symmetric(vertical: 12, horizontal: 35),child: Center(
                        child: Text("Create Account", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                    ),

                  ),
                ),
              ),
              // SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  }, child: Text("Log in",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,

                    ),
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
