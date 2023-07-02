import 'package:cloud_health/screens/appointment_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];

  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Hello Alex",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Welcome to Cloud Health",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/doctor1.jpg"),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.add,
                        color: Colors.red,
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("Clinic Visit",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      SizedBox(height: 5,),
                      Text("Make an appointment",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(width: 10,),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.home_filled,
                          color: Colors.red,
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("Home Visit",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Call the doctor at home",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(height: 25,),
          // Padding(padding: EdgeInsets.only(left: 15),
          // child: Text("What are your Symptoms",
          // style: TextStyle(
          //   fontSize: 23,
          //   fontWeight: FontWeight.w500,
          //   color: Colors.black54,
          // ),
          // ),
          // ),



          // To add more cards
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.only(left: 15),
          child: Text("Popular doctors", style: TextStyle(
             fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),),
          ),
          
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ), itemCount: 4, shrinkWrap: true, physics: NeverScrollableScrollPhysics(), itemBuilder: (context, index){
            return InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentScreen(),));
             },
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(vertical: 17),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/${imgs[index]}"),
                    ),
                    Text("Dr. Doctor Name", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),),
                    Text("Therapist", style: TextStyle(
                      color: Colors.black45
                    ),),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,
                        color: Colors.amber,
                        ),
                        Text("4.9",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },)

          //
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     InkWell(
          //       onTap: (){},
          //       child: Container(
          //         padding: EdgeInsets.all(17),
          //         decoration: BoxDecoration(
          //           color: Colors.red,
          //           borderRadius: BorderRadius.circular(10),
          //           boxShadow: [
          //             BoxShadow(
          //               color: Colors.black12,
          //               blurRadius: 6,
          //               spreadRadius: 4,
          //             )
          //           ],
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Container(
          //               padding: EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 shape: BoxShape.circle,
          //               ),
          //               child: Icon(Icons.add,
          //                 color: Colors.red,
          //                 size: 35,
          //               ),
          //             ),
          //             SizedBox(height: 30,),
          //             Text("Clinic Visit",
          //               style: TextStyle(
          //                 fontSize: 18,
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.w500,
          //               ),
          //             ),
          //             SizedBox(height: 5,),
          //             Text("Make an appoinment",
          //               style: TextStyle(
          //                 color: Colors.white54,
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //
          //     SizedBox(width: 10,),
          //     InkWell(
          //       onTap: (){},
          //       child: Container(
          //         padding: EdgeInsets.all(17),
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(10),
          //           boxShadow: [
          //             BoxShadow(
          //               color: Colors.black12,
          //               blurRadius: 6,
          //               spreadRadius: 4,
          //             )
          //           ],
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Container(
          //               padding: EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: Colors.grey[100],
          //                 shape: BoxShape.circle,
          //               ),
          //               child: Icon(Icons.home_filled,
          //                 color: Colors.red,
          //                 size: 35,
          //               ),
          //             ),
          //             SizedBox(height: 30,),
          //             Text("Home Visit",
          //               style: TextStyle(
          //                 fontSize: 18,
          //                 color: Colors.black,
          //                 fontWeight: FontWeight.w500,
          //               ),
          //             ),
          //             SizedBox(height: 5,),
          //             Text("Call the doctor at home",
          //               style: TextStyle(
          //                 color: Colors.black54,
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
