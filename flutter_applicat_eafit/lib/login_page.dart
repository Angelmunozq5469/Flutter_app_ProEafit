// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'forgort_pw_page.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({
    super.key,
    required this.showRegisterPage,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(370)),
                  color: (const Color(0xFF0F758C)),
                  gradient: LinearGradient(colors: [
                    (const Color(0xFF0F758C)),
                    (const Color(0xFF0F758C)),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),

                      // ignore: sort_child_properties_last
                      child: Image.asset(
                          "/Applications/development/flutter/Flutter_app_ProEafit/images/logo.png"),
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                border: Border.all(color: (Colors.black), width: 2),
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.white)
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                controller: _emailController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(Icons.email, color: Colors.black),
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
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.white)
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Colors.black,
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
                child: Text("¿Olvidaste tu Contraseña?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13)),
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ForgotPasswordPage();
                  }))
                },
              ),
            ),
            GestureDetector(
              onTap: signIn,
              child: Container(
                margin: EdgeInsets.only(left: 50, right: 50, top: 30),
                padding: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (const Color(0xFF49D3F2)),
                    (const Color(0xFF49D3F2)),
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
                  "Iniciar sesión",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: widget.showRegisterPage,
              child: Container(
                margin: EdgeInsets.only(left: 50, right: 50, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (const Color(0xFFF28C76)),
                    (const Color(0xFFF28C76))
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
                  "Registrarse",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Necesitas Ayuda?"),
                  GestureDetector(
                    onTap: () => {},
                    child:
                        Text("Llamanos", style: TextStyle(color: Colors.blue)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
