import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_doctor_booking/colors.dart';
import 'package:flutter_application_doctor_booking/widgets/doctor_section.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  List catNames = ["Dental", "Heart", "Eye", "Brain", "Ear"];

  List<Icon> catIcons = [
    Icon(
      MdiIcons.toothOutline,
      color: pColor,
      size: 30,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: pColor,
      size: 30,
    ),
    Icon(
      MdiIcons.eye,
      color: pColor,
      size: 30,
    ),
    Icon(
      MdiIcons.brain,
      color: pColor,
      size: 30,
    ),
    Icon(
      MdiIcons.earHearing,
      color: pColor,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFD9E4EE),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    pColor.withOpacity(0.8),
                    pColor,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("images/doctor1.png"),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: wColor,
                              size: 30,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Hi,",
                          style: TextStyle(
                              color: wColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Your Health is Our\nFirst Priority",
                          style: TextStyle(
                              color: wColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: wColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    spreadRadius: 3)
                              ]),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search here.....",
                                hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.5)),
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 25,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: bColor.withOpacity(0.7)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: catNames.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF2F8FF),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: sdColor,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Center(
                                child: catIcons[index],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              catNames[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: bColor.withOpacity(0.7)),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 15),
                  child: Text("Reccommended Doctors", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: bColor.withOpacity(0.7) ),),),
                  DoctorSections()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}