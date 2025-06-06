import 'package:firebase_auth/firebase_auth.dart';

class ResetService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String?> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return null; 
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      return "An unexpected error occurred.";
    }
  }
}
