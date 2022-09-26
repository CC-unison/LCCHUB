//import shared_preferences.dart
import 'package:shared_preferences/shared_preferences.dart';
Future<String?> getAccessToken()async{
 SharedPreferences pref = await SharedPreferences.getInstance();
  String? accessToken = pref.getString('accessToken');
  return accessToken;

}