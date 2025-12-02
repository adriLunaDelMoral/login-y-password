import 'package:flutter/cupertino.dart';
import 'package:login_password/config/helpers/res_users_answer.dart';
import 'package:login_password/domain/entities/users.dart';

class UserProvider extends ChangeNotifier {
  Users users = Users(id:"", username: "", password: "");
  TextEditingController usersController =TextEditingController();
  Future<void>getUser() async{
    users= await ResUsersAnswer().getHttp();
    notifyListeners();
  }
}