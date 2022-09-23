import 'package:flutter/material.dart';
import 'package:flutter_applicat_eafit/home/mainapphome.dart';
import 'package:flutter_applicat_eafit/home/signup_screen2.dart';

class SignUp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUp1> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  signupRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignUp2()));
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(390)),
                  color: Color.fromARGB(255, 13, 139, 217),
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(255, 13, 139, 217)),
                    (Color.fromARGB(255, 13, 139, 217))
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 100,
                      ),
                      child: Image.asset(
                          "C:/Users/juanm/OneDrive/Documentos/VIDAIN/Flutter_app_ProEafit/images/logo.png"),
                      height: 280,
                      width: 280,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color.fromARGB(255, 13, 139, 217),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 13, 139, 217),
                    ),
                    hintText: "Registrar Email",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color.fromARGB(255, 13, 139, 217),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color.fromARGB(255, 13, 139, 217),
                    ),
                    hintText: "Registrar Contraseña",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            MaterialButton(
              minWidth: 290.0,
              height: 45.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              onPressed: () {
                signupRoute();
              },
              color: Color.fromARGB(255, 13, 139, 217),
              child: Text('SIGUIENTE', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}