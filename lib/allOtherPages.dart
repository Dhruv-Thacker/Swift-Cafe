import 'package:flutter/material.dart';
import 'package:swift/loginPage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Profile Page'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the login page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}


class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Welcome to wallet Page'),
      ),
    );
  }
}

class DeletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Welcome to Delete Page'),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Welcome to Chat Page'),
      ),
    );
  }
}