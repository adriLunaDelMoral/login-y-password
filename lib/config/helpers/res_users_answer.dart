
import 'package:dio/dio.dart';
import 'package:login_password/domain/entities/users.dart';
import 'package:login_password/infraestructure/models/res_users_model.dart';

class ResUsersAnswer {
  
  Future<Users> getHttp() async {
    final dio = Dio();
    final response = await dio.get("https://script.googleusercontent.com/macros/echo?user_content_key=AehSKLj9UJBBnvDDkZZKedNPFhBTR233D56SchyVBPwRKblBJdst1eOhAcKbWLGkpRco40maCykPX9uKHKtKmKiJxQGxP9iMKiI_S7WlWH-rfMy0ALsd1M4sFutFUlvJNkevtMuaOyDmIGzYZ94TPFimXXF5tZ1at3j-QW6OC8k3X3KPja8cH1g-nr4NSMeLK6bNOiw35bau4L8JgH0xtm84BBGUAbirrth2WEVyH2HdlBmXc3_qf6PO99aMSQRo-22DNQ3F7Zx2l-vYLONK5gtaGDpwM3VOHu9RJnVc3IHIJaqD9FIdcSot4pQ1Nl_GK0hUhQpY9MofEfkHPZqDE1TADPbAEGgDJBPYRc2zNAKElPhG5O7wocm0R3IfIb2n0Q&lib=Mn-rtLpkfU9YyELwDjAiKo0maIr1AFhca");

    if(response.statusCode != 200) return Users(id: "No existe", password: "No existe", username: "No existe");

    final resUsersModel = ResUsersModel.fromJson(response.data.first); 

    
    return resUsersModel.toUserEntity();

  }
}
