import 'package:cloud_health/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter your name"),
                  prefixIcon: Icon(Icons.person),

                ),
              ),),
              Padding(padding: EdgeInsets.all(12),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: (){
                      if(passToggle == true){
                        passToggle = false;
                      }
                      else{
                        passToggle = true;
                      }
                      setState(() {

                      });
                    },
                    child: passToggle ?
                    Icon(CupertinoIcons.eye_slash_fill):
                    Icon(CupertinoIcons.eye_fill),
                  ),

                ),
              ),
              ),
              SizedBox(height: 20,),
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
                        child: Text("Log In", style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                    ),

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                }, child: Text("Create Account",
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
