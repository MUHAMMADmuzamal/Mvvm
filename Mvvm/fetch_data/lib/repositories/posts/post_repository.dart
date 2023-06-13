import 'package:fetch_data/models/fake_post_data_model.dart';

abstract class PostsRepository {
  Future<List<PostModel>> getAllPosts();
  Future<PostModel> getPostById(int id);
}
