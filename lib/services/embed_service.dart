import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:university/models/embed_model.dart';

class EmbedService {
  final baseUrl = 'v1.nocodeapi.com';

  Future<MetaModel> getData(String src) async {
    final url = Uri.https(
        baseUrl, '/elyanan/link_preview/yVcPkTgLfyXzLzhH', {'url': src});
    try {
      final response = await http.get(url);
      final json = jsonDecode(response.body);

      final model = MetaModel.fromJson(json);

      //print(model.author);

      return model;
    } catch (e) {
      rethrow;
    }
  }
}
