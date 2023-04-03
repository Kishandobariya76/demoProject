import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class NetworkUrls {
  /// Secure Information
  static String? apiKey;

  /// Base URL of API
  static String baseUrl = dotenv.get('BASE_API');

  /// USer login url
  static String loginUrl = 'action=UserLogin&api_key=$apiKey';

  /// USer logout url
  static String logoutUrl = 'action=UserLogout&api_key=$apiKey';

}
