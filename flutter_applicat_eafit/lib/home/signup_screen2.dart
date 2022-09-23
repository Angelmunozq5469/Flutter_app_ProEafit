import 'package:flutter/material.dart';
import 'package:flutter_applicat_eafit/home/mainapphome.dart';

class SignUp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
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
                    hintText: "Nombre Paciente",
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
                      Icons.calendar_month,
                      color: Color.fromARGB(255, 13, 139, 217),
                    ),
                    hintText: "Fecha Nacimiento",
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
                      Icons.numbers,
                      color: Color.fromARGB(255, 13, 139, 217),
                    ),
                    hintText: "Edad Paciente",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            MaterialButton(
              elevation: (100.0),
              minWidth: 280.0,
              height: 45.0,
              shape:
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              // CRON PARA LAS ALARMAS
              onPressed: () {
              },
              color: Color.fromARGB(255, 13, 139, 217),
              child: Text('Informacio Familiar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}