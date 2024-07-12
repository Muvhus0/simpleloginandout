import 'package:flutter/material.dart';
import 'routes.dart';

class SimpleLogInAndLogOut extends StatelessWidget {
  const SimpleLogInAndLogOut({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple LogIn And LogOut',
      initialRoute: '/login',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
