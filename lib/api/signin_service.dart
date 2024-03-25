import 'package:http/http.dart' as http;

class SignIn {
  static signIn(String email, String password) async{
    Uri uri = Uri.https('identitytoolkit.googleapis.com', '/v1/accounts:signInWithPassword', {'key': 'AIzaSyDzcPjZbKGSErrV-NSpJNwXeVeXPwdlKio'});
    http.Response response = await http.post(uri, body: {
      'email': email,
      'password': password,
      'returnSecureToken': 'true'
    });
    return response.body;
  }
}