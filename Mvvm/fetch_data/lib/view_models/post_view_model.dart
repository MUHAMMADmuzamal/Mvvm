import 'package:fetch_data/models/fake_post_data_model.dart';

class PostViewModel {
  PostModel? postDataModel;
  PostViewModel({this.postDataModel});

  get id => postDataModel?.id;
  get userId => postDataModel?.userId;
  get title => postDataModel?.title?.toUpperCase();
  get body => postDataModel?.body;
}
