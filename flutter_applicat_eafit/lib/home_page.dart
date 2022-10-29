import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'ButtonReporte.dart';

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
                  "/Applications/development/flutter/Flutter_app_ProEafit/images/fondo.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                child: SizedBox(
                  height: 45,
                ),
              ),
              Container(
                child: Material(
                  color: Colors.white,
                  elevation: 20,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.blue,
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage(
                              '/Applications/development/flutter/Flutter_app_ProEafit/images/pastillas.png'),
                          height: 110,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 40,
                          height: 30,
                        ),
                        Text(
                          """Recuerda tomar tus
    medicamentos""",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Material(
                    color: Colors.white,
                    elevation: 20,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/alimentacion.png'),
                            height: 110,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 50,
                            height: 30,
                          ),
                          Text(
                            """Alimentate 
conscientemente""",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
                    height: 45,
                  ),
                  Material(
                    color: Colors.white,
                    elevation: 20,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/cuidado.png'),
                            height: 110,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 20,
                            height: 30,
                          ),
                          Text(
                            "   Recuerda Cuidarte",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 60,
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
                    height: 45,
                  ),
                  Material(
                    color: Colors.white,
                    elevation: 20,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/Motivacion.png'),
                            height: 110,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 65,
                            height: 30,
                          ),
                          Text(
                            "Motivacion",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
              Column(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Material(
                    color: Colors.white,
                    elevation: 20,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ButtonReport();
                        }))
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/reporte.png'),
                            height: 110,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            " Reporte general",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 80,
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
                    height: 33,
                  ),
                  Material(
                    color: Colors.white,
                    elevation: 20,
                    borderRadius: BorderRadius.circular(90),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                '/Applications/development/flutter/Flutter_app_ProEafit/images/salir.png'),
                            height: 60,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 0,
                            height: 0,
                          ),
                          SizedBox(
                            width: 0,
                            height: 0,
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
