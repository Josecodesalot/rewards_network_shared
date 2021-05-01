import 'package:rewards_network_shared/models/auth_fields.dart';
import 'package:rewards_network_shared/models/response.dart';

abstract class AuthService<User>{
  Future<Response<User>> checkAuthStatus(){}
  Future<Response<User>> signUp(AuthFields authFields){}
  Future<Response<User>> signIn(AuthFields authFields){}
  Future<Response<User>> signOut(){}
  Future<Response<User>> getUserObject(String uid){}
  Future<Response<User>> signInAnon(){}
}