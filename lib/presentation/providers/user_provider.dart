import 'package:flutter/cupertino.dart';
import 'package:login_password/config/helpers/res_users_answer.dart';
import 'package:login_password/domain/entities/users.dart';

class UserProvider extends ChangeNotifier { 
  List<Users> allUsers = [];
  TextEditingController usersController =TextEditingController();
  Future<void> getUsers() async{
   
    final ResUsersAnswer resUsersAnswer = ResUsersAnswer();
      allUsers = await resUsersAnswer.getUsers();
      notifyListeners();
   
  }
}



