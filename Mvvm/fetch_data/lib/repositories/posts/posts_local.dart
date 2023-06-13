import 'package:fetch_data/models/fake_post_data_model.dart';
import 'package:fetch_data/repositories/posts/post_repository.dart';

class PostsLocal extends PostsRepository {
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}
