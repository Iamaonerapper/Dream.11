import 'package:firebase_auth/firebase_auth.dart';
class AuthService {
  static Future<User?> login(String email, String pass) async {
    try {
      final cred = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass);
      return cred.user;
    } catch (e) {
      return null;
    }
  }
}