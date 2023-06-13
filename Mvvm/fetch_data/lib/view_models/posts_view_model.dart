import 'package:fetch_data/models/fake_post_data_model.dart';
import 'package:fetch_data/repositories/posts/post_repository.dart';
import 'package:fetch_data/view_models/post_view_model.dart';

class PostsViewModel {
  String title = "Fake JSON Data";
  PostsRepository? postsRepository;
  PostsViewModel({this.postsRepository});
  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostModel> list = await postsRepository!.getAllPosts();
    return list.map((post) => PostViewModel(postDataModel: post)).toList();
  }
}
