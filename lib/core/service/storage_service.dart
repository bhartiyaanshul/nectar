import 'package:nectar/core/supabase.dart';

class StorageService{

  String getPublicUrl(String path) {
    final url = supabase.storage.from('content').getPublicUrl(path);
    return url;
  }
}