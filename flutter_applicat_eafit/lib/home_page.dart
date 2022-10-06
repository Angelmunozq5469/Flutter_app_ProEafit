import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "/Applications/development/flutter/Flutter_app_ProEafit/images/logo2.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                child: Material(
                  color: Colors.blue,
                  elevation: 20,
                  borderRadius: BorderRadius.circular(30),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage(
                              '/Applications/development/flutter/Flutter_app_ProEafit/images/pastillas.png'),
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 40,
                          height: 30,
                        ),
                        Text(
                          "Medicamentos",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        ),
                        SizedBox(
                          width: 40,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.blue,
                    elevation: 20,
                    borderRadius: BorderRadius.circular(30),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.green,
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/alimentacion.png'),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 50,
                            height: 30,
                          ),
                          Text(
                            "Alimentacion",
                            style: TextStyle(fontSize: 29, color: Colors.white),
                          ),
                          SizedBox(
                            width: 50,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.blue,
                    elevation: 20,
                    borderRadius: BorderRadius.circular(30),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.green,
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/cuidado.png'),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 20,
                            height: 30,
                          ),
                          Text(
                            "Cuidado personal",
                            style: TextStyle(fontSize: 29, color: Colors.white),
                          ),
                          SizedBox(
                            width: 20,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.blue,
                    elevation: 20,
                    borderRadius: BorderRadius.circular(30),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.green,
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/Motivacion.png'),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 65,
                            height: 30,
                          ),
                          Text(
                            "Motivacion",
                            style: TextStyle(fontSize: 29, color: Colors.white),
                          ),
                          SizedBox(
                            width: 65,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.blue,
                    elevation: 20,
                    borderRadius: BorderRadius.circular(30),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.green,
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/reporte.png'),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            "Reporte general",
                            style: TextStyle(fontSize: 29, color: Colors.white),
                          ),
                          SizedBox(
                            width: 30,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.blue,
                    elevation: 20,
                    borderRadius: BorderRadius.circular(30),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/salir.png'),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 110,
                            height: 30,
                          ),
                          Text(
                            "Salir",
                            style: TextStyle(fontSize: 29, color: Colors.white),
                          ),
                          SizedBox(
                            width: 110,
                            height: 30,
                          ),
                        ],
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
