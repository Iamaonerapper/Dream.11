import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  bool loading = false;

  void login() async {
    setState(() => loading = true);
    final user = await AuthService.login(emailCtrl.text, passCtrl.text);
    setState(() => loading = false);
    if (user != null) Navigator.pushReplacementNamed(context, '/home');
    else ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Failed')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(24), child: Column(
        mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('11Dream', style: TextStyle(fontSize:32,fontWeight:FontWeight.bold)),
          TextField(controller: emailCtrl, decoration: InputDecoration(labelText:'Email')),
          TextField(controller: passCtrl, decoration: InputDecoration(labelText:'Password'), obscureText: true),
          SizedBox(height:20),
          loading? CircularProgressIndicator(): ElevatedButton(onPressed: login, child:Text('Login')),
        ],
      )),
    );
  }
}