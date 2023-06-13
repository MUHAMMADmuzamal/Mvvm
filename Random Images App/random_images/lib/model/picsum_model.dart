class PicSumModel {
  String? _id;
  String? _author;
  int? _width;
  int? _height;
  String? _url;
  String? _downloadUrl;

  PicSumModel(
      {String? id,
      String? author,
      int? width,
      int? height,
      String? url,
      String? downloadUrl}) {
    if (id != null) {
      _id = id;
    }
    if (author != null) {
      _author = author;
    }
    if (width != null) {
      _width = width;
    }
    if (height != null) {
      _height = height;
    }
    if (url != null) {
      _url = url;
    }
    if (downloadUrl != null) {
      _downloadUrl = downloadUrl;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get author => _author;
  set author(String? author) => _author = author;
  int? get width => _width;
  set width(int? width) => _width = width;
  int? get height => _height;
  set height(int? height) => _height = height;
  String? get url => _url;
  set url(String? url) => _url = url;
  String? get downloadUrl => _downloadUrl;
  set downloadUrl(String? downloadUrl) => _downloadUrl = downloadUrl;

  PicSumModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _author = json['author'];
    _width = json['width'];
    _height = json['height'];
    _url = json['url'];
    _downloadUrl = json['download_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['author'] = _author;
    data['width'] = _width;
    data['height'] = _height;
    data['url'] = _url;
    data['download_url'] = _downloadUrl;
    return data;
  }
}
