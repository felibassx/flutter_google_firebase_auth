import 'package:fire_auth_example/src/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final AuthService authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await authService.googleSignIn();
          },
          child: Text('Inicia con Google'),
        ),
     ),
   );
  }
}