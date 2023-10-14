import 'dart:async';
import 'package:movieapp_180247/model/Media.dart';
import 'package:movieapp_180247/common/HttpHandler.dart';

abstract class MediaProvider{
  
  Future<List<Media>> fetchMedia();
}

class MediaPrvider extends MediaProvider{
HttpHandler _client = HttpHandler.get();
@override
Future<List<Media>> fetchMedia(){
  return _client.fetchMovies();
}
}

class ShowProvider extends MediaProvider{
HttpHandler _client = HttpHandler.get();
@override
Future<List<Media>> fetchMedia(){
  return _client.fetchShow();
}
}