import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffead0d0),
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Color(0xffead0d0),
        leading: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 55),
            ),
            Text(
              'Enter your login details below...',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.only(left: 55, right: 55),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.only(left: 55, right: 55),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: this.value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value ?? false;
                      });
                    },
                  ),
                  SizedBox(width: 7),
                  Text('Remember Me.')
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 200,
              child: TextButton(
                onPressed: () {
                  String username = usernameController.text.trim();
                  if (username.isNotEmpty) {
                    Navigator.pushNamed(
                      context,
                      '/home',
                      arguments: username,
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Error'),
                        content: Text('Please enter a username.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.login,
                        ),
                        SizedBox(width: 5),
                        Text('Log In')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New Here ?'),
                  SizedBox(width: 1),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
