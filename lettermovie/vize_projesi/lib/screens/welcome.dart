import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Welcome to lettermovie')),
        backgroundColor: Colors.blue, // AppBar'ın arka plan rengi
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Welcome to lettermovie",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Butonun arka plan rengi
                    onPrimary: Colors.white, // Buton metni rengi
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.login_outlined),
                      SizedBox(width: 5),
                      Text("Login"),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange, // Butonun arka plan rengi
                    onPrimary: Colors.white, // Buton metni rengi
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.app_registration),
                      SizedBox(width: 5),
                      Text("Register"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200], // Scaffold'ın arka plan rengi
    );
  }
}
