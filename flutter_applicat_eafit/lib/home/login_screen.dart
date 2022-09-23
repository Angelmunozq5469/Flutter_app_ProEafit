import 'package:flutter/material.dart';
import 'package:flutter_applicat_eafit/home/mainapphome.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
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
                          "/Users/angelmunozquintero/Documents/Universidad CES/Proyecto EAFIT/DevelopEAFIT/images/logo.png"),
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
                    hintText: "Entrar Email",
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
                    hintText: "Ingresa Contraseña",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text("¿Olvidaste tu Contraseña?"),
                onTap: () => {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 13, 139, 217)),
                  (Color.fromARGB(255, 13, 139, 217))
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              child: Text(
                "INGRESAR",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 13, 139, 217)),
                  (Color.fromARGB(255, 13, 139, 217))
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              child: Text(
                "REGISTRARSE",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Necesitas Ayuda?"),
                  GestureDetector(
                    onTap: () => {},
                    child: Text("Llamanos",
                        style: TextStyle(
                            color: Color.fromARGB(255, 13, 139, 217))),
                  )
                ],
              ),
            ),

/*              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(255, 13, 139, 217)),
                    (Color.fromARGB(255, 13, 139, 217))
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE))
                  ],
                ),
                child: Text(
                  "INGRESAR",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
*/
          ],
        ),
      ),
    );
  }
}
