//Thanks! Airon Tark
String validateEmail(String value) {
  bool emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);
  return emailValid ? null : 'Please enter a valid email';
}

//TODO add levels of security
String validatePassword(String value) =>
    value.length > 7 ? null : 'The password must be atleast 8 characters long';
