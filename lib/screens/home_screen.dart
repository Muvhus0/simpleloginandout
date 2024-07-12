import 'package:flutter/material.dart';
import '../screens/widgets/terms.dart';

class HomeScreen extends StatefulWidget {
  final String? username;

  const HomeScreen({Key? key, required this.username}) : super(key: key);
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffead0d0),
      appBar: AppBar(
        backgroundColor: Color(0xffead0d0),
        title: Text('Simple LogIn And LogOut'),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/login');
            },
            tooltip: 'Log Out',
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 255,
                width: maxWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black,
                ),
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Hi ${widget.username}',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'This app demostrates passing of information between pages and password verification.',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(height: 7),
            Expanded(
              child: Container(
                height: 255,
                width: maxWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                          'It also demostrates the useage of Expanded which devides the page into equal parts, or based on the given Flex value.'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 7),
            Expanded(
              child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 255,
                  width: maxWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red,
                  ),
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Terms();
                        },
                      );
                    },
                    child: Text('Ts & Cs'),
                  )),
            )
          ],
        ),
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
