import 'package:picts_editor_app/module/home/model/collection/collection_model.dart';
import 'package:picts_editor_app/module/home/model/photo/photo_model.dart';

abstract class HomeRepository {
  Future<List<CollectionItemModel>> getCollections(int perPage);

  Future<List<PhotoItemModel>> getPhotos(int page, int perPage);
}