import 'package:fire_auth_example/src/pages/home_page.dart';
import 'package:fire_auth_example/src/pages/signin_page.dart';
import 'package:fire_auth_example/src/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthService.instance(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {},
        debugShowCheckedModeBanner: false,
        title: 'Ejemplo Auth Firebase',
        home: Consumer(
          builder: (context, AuthService authService, _) {
            switch (authService.status) {
              case AuthStatus.Uninitialized:
                return Text('Cargando...');
                break;
              case AuthStatus.Authenticated:
                return HomePage();
              case AuthStatus.Authenticating:
                return SignInPage();
              case AuthStatus.Unauthenticated: 
                return SignInPage();
            }

            return null;
          },
        ),
      ),
    );
  }
}