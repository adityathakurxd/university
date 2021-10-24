import 'package:metadata_fetch/metadata_fetch.dart';

class EmbedService {
  Future<Map<String, String?>> getMetaData(String src) async {
    var data = await MetadataFetch.extract(src);
    return data!.toMap();
  }
}
