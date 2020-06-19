import 'package:fire_auth_example/src/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final AuthService authService = Provider.of<AuthService>(context);
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Center(
            child: Text(authService.user.email),
          ),
          Center(
            child: RaisedButton(
              child: Text('Cerrar Sesión'),
              onPressed: () {
                authService.signOut();                
              },
            ),
          ),
        ],
      ),
    );
  }
}