enum UserType{
  client,
  clerk,
  admin,
  master
}

extension xUserType on UserType{
  String makeString(){
    return toString().substring(toString().indexOf('.') + 1);
  }
}

extension xString on String{
  UserType toUserType() {
    return {
      'client': UserType.client,
      'clerk': UserType.clerk,
      'admin': UserType.admin,
      'master': UserType.master,
    }[this];
  }
}