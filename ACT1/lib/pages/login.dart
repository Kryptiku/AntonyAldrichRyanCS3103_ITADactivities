import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameText = TextEditingController();
  final TextEditingController passwordText = TextEditingController();

  void loginButton(BuildContext context) {
    String username = usernameText.text;
    String password = passwordText.text;

    // Check if username and password are correct
    if (username == 'ryceisnice' && password == '12345') {
      // login is successful, go to main.dart MyCVPage
      Navigator.pushReplacementNamed(context, '/home');
    } else if (username == '' || password == '') {
      // if the username and/or password is empty go here
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Credentials Invalid!"),
            content: const Text('Username or Password is empty'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // close the dialog
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      // if wrong password or username, show an error dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Credentials Invalid!"),
            content: const Text('Invalid username or password entered.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
          color: Colors.black54,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // username textfield
            TextField(
              controller: usernameText,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // password textfield
            TextField(
              controller: passwordText,
              obscureText: true, // mask the password
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // login button
            ElevatedButton(
              onPressed: () => loginButton(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey, // button bg color
                foregroundColor: Colors.white, // button text color
                padding:
                const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}