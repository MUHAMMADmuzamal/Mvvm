import 'package:flutter/material.dart';
import 'package:random_images/view_model/list_picture_viewmodel.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ListPictureViewModel listPictureViewModel = ListPictureViewModel();
    return Scaffold(
      appBar: AppBar(title: const Text("Pictures")),
      body: FutureBuilder(
        future: listPictureViewModel.fetchPictures(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemBuilder: ((BuildContext context, index) => Container(
                    color: Colors.grey,
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image:
                          '${listPictureViewModel.pictures![index % listPictureViewModel.pictures!.length].downloadUrl}',
                      // '${listPictureViewModel.pictures![index % listPictureViewModel.pictures!.length].picSumModel!.downloadUrl}',
                      fit: BoxFit.cover,
                    ),
                  )),
              staggeredTileBuilder: (index) =>
                  StaggeredTile.count(2, index.isEven ? 2 : 1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            );
          }
        },
      ),
    );
  }
}
