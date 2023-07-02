import 'package:cloud_health/widgets/navbar_roots.dart';
import 'package:cloud_health/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => NavBarRoots(),));},
              child: Text("Skip", style: TextStyle(
              color: Colors.red,
                fontSize: 20,
              ),
              ),
            ),
            ),
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.all(20),child: Image.asset("assets/doctors.png"),
            ),
            SizedBox(height: 50,),
            Text("Doctor's Appointment", style: TextStyle(
              color: Colors.red,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2,
            ),),
            SizedBox(height: 10,),
            Text("Appoint Your Doctor", style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 12, horizontal: 35),child: Text("Log In", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    ),
                  ),

                ),
                Material(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                    },
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 12, horizontal: 35),child: Text("Sign Up", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    ),
                  ),

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
