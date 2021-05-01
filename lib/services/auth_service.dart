import 'package:rewards_network_shared/models/auth_fields.dart';
import 'package:rewards_network_shared/models/client_state.dart';
import 'package:rewards_network_shared/models/response.dart';

abstract class AuthService{
  Future<Response<UserState>> checkAuthStatus(){}
  Future<Response<UserState>> signUp(AuthFields authFields){}
  Future<Response<UserState>> signIn(AuthFields authFields){}
  Future<Response<UserState>> signOut(){}
  Future<Response<UserState>> getUserObject(String uid){}
  Future<Response<UserState>> signInAnon(){}
}