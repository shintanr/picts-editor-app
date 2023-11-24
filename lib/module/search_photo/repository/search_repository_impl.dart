import 'package:dio/dio.dart';
import 'package:picts_editor_app/core/network/client_utils.dart';
import 'package:picts_editor_app/module/home/model/photo/photo_model.dart';
import 'package:picts_editor_app/module/search_photo/repository/search_repository.dart';

class SearchRepositoryImpl extends SearchRepository {
  final Dio client;

  SearchRepositoryImpl({
    required this.client,
  });

  @override
  Future<List<PhotoItemModel>> searchPhotoByKeyword(
    int page,
    int perPage,
    String keyword,
  ) async {
    try {
      final result = await client
          .get("/search", options: ClientUtils.pexelAuth, queryParameters: {
        "page": page,
        "per_page": perPage,
        "query": keyword,
      });

      if (result.statusCode == 200) {
        final resultFromJson = PhotoModel.fromJson(result.data);
        return resultFromJson.photos;
      }
      return [];
    } catch (e) {
      rethrow;
    }
  }
}
