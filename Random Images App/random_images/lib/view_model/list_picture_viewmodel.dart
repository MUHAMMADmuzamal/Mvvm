import 'dart:developer';

import 'package:random_images/model/picsum_model.dart';

import 'package:random_images/model/picsum_model.dart';
import 'package:random_images/services/services.dart';

class ListPictureViewModel {
  List<PicSumModel>? pictures;

  Future<void> fetchPictures() async {
    final apiResult = await Service().fetchPicturesAPI();
    pictures = apiResult;
    // pictures = apiResult.map((e) => PictureViewModel(e)).toList();
  }
}

class PictureViewModel {
  final PicSumModel? picSumModel;
  PictureViewModel(this.picSumModel);
}
