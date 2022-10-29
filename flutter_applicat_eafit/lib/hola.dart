// ignore: file_names

import 'package:gallery_saver/gallery_saver.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class ButtonReport extends StatefulWidget {
  const ButtonReport({super.key});

  @override
  State<ButtonReport> createState() => _ButtonReportState();
}

class _ButtonReportState extends State<ButtonReport> {
  late Future<ListResult> futureFiles;
  Map<int, double> downloadProgress = {};

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseStorage.instance.ref("/Paciente").listAll();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFB7B6B2),
          elevation: 0.0,
          centerTitle: false,
          titleSpacing: 0.0,
          title: Transform(
            transform: Matrix4.translationValues(-15.0, 0, 0),
            child: Text("Regresar"),
          )),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "/Applications/development/flutter/Flutter_app_ProEafit/images/fondoreporte.png"),
              fit: BoxFit.cover),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 5,
          ),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "/Applications/development/flutter/Flutter_app_ProEafit/images/reportea.png"),
                  scale: 1.0)),
          child: Container(
            transform: Matrix4.translationValues(0, -300, 0),
            alignment: AlignmentDirectional.topCenter,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "/Applications/development/flutter/Flutter_app_ProEafit/images/paciente.png"))),
            child: FutureBuilder<ListResult>(
              future: futureFiles,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final files = snapshot.data!.items;

                  return ListView.builder(
                    itemCount: files.length,
                    itemBuilder: (context, index) {
                      final file = files[index];
                      double? progress = downloadProgress[index];

                      return ListTile(
                        subtitle: progress != null
                            ? LinearProgressIndicator(
                                value: progress,
                                backgroundColor: Colors.black26,
                              )
                            : null,
                        trailing: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            padding:
                                EdgeInsets.only(top: 850, left: 50, right: 177),
                            icon: const Icon(
                              Icons.download,
                              size: 80,
                              color: Colors.black,
                            ),
                            onPressed: () => {downloadFile(index, file)},
                          ),
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return const Center(child: Text("Hay un ERROR"));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ),
      ));

  Future downloadFile(int index, Reference ref) async {
    final url = await ref.getDownloadURL();

    /// Not visible for user
    final tempDir = await getTemporaryDirectory();
    final path = "${tempDir.path}/${ref.name}";
    await Dio().download(
      url,
      path,
      onReceiveProgress: (received, total) {
        double progress = received / total;

        setState(() {
          downloadProgress[index] = progress;
        });
      },
    );

    if (url.contains(".jpg")) {
      await GallerySaver.saveImage(path, toDcim: true);
    }

    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Downloaded ${ref.name}")),
    );
  }
}
