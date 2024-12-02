import 'dart:typed_data';
import 'package:cv/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyCVPage extends StatefulWidget {
  const MyCVPage({super.key});

  @override
  State<MyCVPage> createState() => _MyCVPageState();
}

class _MyCVPageState extends State<MyCVPage> {

  Uint8List? image;
  void selectImage() async{
    Uint8List img = await changePFP(ImageSource.gallery);
    setState(() {
      image = img;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('俺のシーヴィ'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'CV Sections',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),
            ListTile(
              leading: const Icon(
                Icons.school_rounded,
                color: Colors.blueGrey,
              ),
              title: const Text('Education'),
              onTap: () {
                Navigator.pushNamed(context, '/education');
              }
            ),
            ListTile(
              leading: const Icon(
                Icons.code_rounded,
                color: Colors.blueGrey,
              ),
              title: const Text('Skills'),
              onTap: () {
                Navigator.pushNamed(context, '/skills');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.create_new_folder,
                color: Colors.blueGrey,),
              title: const Text('Projects'),
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.download_done_rounded,
                color: Colors.blueGrey,
              ),
              title: const Text('Experience'),
              onTap: () {
                Navigator.pushNamed(context, '/experience');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_rounded,
                color: Colors.blueGrey,
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              }
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                image != null
                    ? CircleAvatar(
                  radius: 65.0,
                  backgroundImage: MemoryImage(image!),
                )
                    : const CircleAvatar(
                  radius: 65.0,
                  backgroundColor: Colors.grey,
                  child: Text(
                    'ARA',
                    style:
                    TextStyle(fontSize: 40, color: Colors.black),
                  ),
                ),
                Positioned(
                  child: IconButton(
                    onPressed: selectImage,
                    icon: const Icon(Icons.add_a_photo),
                  ),
                  bottom: -5,
                  left: 80,
                ),
              ]
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'Aldrich Ryan V. Antony',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0,),
            const Text(
              '123-456-7890',
              style: TextStyle(fontSize: 18.0,),
            ),
            const SizedBox(height: 15.0,),
            const Text(
              '21-03781@g.batstate-u.edu.ph',
              style: TextStyle(fontSize: 18.0,),
            )
          ],
        ),
      ),
    );
  }
}