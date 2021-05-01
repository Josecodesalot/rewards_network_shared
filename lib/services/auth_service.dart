import 'package:rewards_network_shared/models/auth_fields.dart';
import 'package:rewards_network_shared/models/client_state.dart';
import 'package:rewards_network_shared/models/response.dart';

abstract class AuthService{
  Future<Response<ClientState>> checkAuthStatus(){}
  Future<Response<ClientState>> signUp(AuthFields authFields){}
  Future<Response<ClientState>> signIn(AuthFields authFields){}
  Future<Response<ClientState>> signOut(){}
  Future<Response<ClientState>> getUserObject(String uid){}
  Future<Response<ClientState>> signInAnon(){}
}