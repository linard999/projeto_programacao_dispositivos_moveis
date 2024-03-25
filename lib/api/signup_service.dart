import 'package:http/http.dart' as http;

class SignUp {
  static signUp(String email, String password) async{
    Uri uri = Uri.https('identitytoolkit.googleapis.com', '/v1/accounts:signUp', {'key': 'AIzaSyDzcPjZbKGSErrV-NSpJNwXeVeXPwdlKio'});
    http.Response response = await http.post(uri, body: {
      'email': email,
      'password': password,
      'returnSecureToken': 'true'
    });
    return response.body;
  }
}