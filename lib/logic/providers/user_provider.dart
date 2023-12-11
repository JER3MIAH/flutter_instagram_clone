import 'package:flutter/widgets.dart';
import 'package:flutter_instagram_clone/data/models/user.dart';
import 'package:flutter_instagram_clone/logic/services/auth_service.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthService _authMethods = AuthService();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
