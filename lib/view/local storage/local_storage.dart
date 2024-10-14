
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage{

  final storage = FlutterSecureStorage();

  readData({required String key})async{
    return await storage.read(key: key);
  }

  writeData({required String key,required String value})async{
    return await storage.write(key: key,value: value);
  }
  deleteData() async {
    return await storage.deleteAll();

  }

}