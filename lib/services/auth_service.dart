import 'package:rewards_network_shared/models/auth_fields.dart';
import 'package:rewards_network_shared/models/client_state.dart';
import 'package:rewards_network_shared/models/response.dart';

abstract class AuthService<User>{
  Future<Response<UserState<User>>> checkAuthStatus(){}
  Future<Response<UserState<User>>> signUp(AuthFields authFields){}
  Future<Response<UserState<User>>> signIn(AuthFields authFields){}
  Future<Response<UserState<User>>> signOut(){}
  Future<Response<UserState<User>>> getUserObject(String uid){}
  Future<Response<UserState<User>>> signInAnon(){}
}