import 'package:http/http.dart';

import '../model/model.dart';
import 'package:http/http.dart' as http;


class ApiController {
  Future<List<Model?>?> getUsers() async{
    final url="https://api.unsplash.com/photos/?client_id=8634366274bd23efb9b023fb9b2c6502e67f7dd5d6a7962b3b49fbee170940f8";



    /*final req=await http.get(Uri.parse(url));
    if(req.statusCode==200){
      final body=req.body;
      final model = modelFromJson(body);
      return model;
    }else{
      final body=req.body;
      final error = modelFromJson(body);
      print(error);
      return error;
    }*/


  }
}