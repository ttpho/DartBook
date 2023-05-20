class LoginParam {
  final String userName;
  final String password;
  const LoginParam(this.userName, this.password);

  @override
  String toString() {
    return "LoginParam(userName: $userName, password: $password)";
  }
}

void main(List<String> args) {
  final LoginParam param = LoginParam("ttpho", "123456");

  /// without override toString() Instance of 'LoginParam'
  /// with override toString() LoginParam(userName: ttpho, password: 123456)
  print(param);
}
