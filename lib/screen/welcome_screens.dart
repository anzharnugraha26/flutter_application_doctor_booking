import 'package:flutter/material.dart';
import 'package:flutter_application_doctor_booking/colors.dart';
import 'package:flutter_application_doctor_booking/screen/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [pColor.withOpacity(0.8), pColor],
        )),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset('images/doctor.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Doctors Online",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Appoint Your Doctor",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 60,),
            Material(
              color: wColor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen() ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text("Let's Go" , style: TextStyle(
                    color: pColor ,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
            ),
            SizedBox(height: 60,),
            Image.asset('images/lineheart.png', color: wColor, scale: 2,)
          ],
        ),
      ),
    );
  }
}
