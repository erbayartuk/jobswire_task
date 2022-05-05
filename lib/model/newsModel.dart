class NewsModel {
  bool? success;
  List<News>? result;

  NewsModel({this.success, this.result});

  NewsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['result'] != null) {
      result = <News>[];
      json['result'].forEach((v) {
        result!.add(new News.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class News {
  String? key;
  String? url;
  String? description;
  String? image;
  String? name;
  String? source;
  String? date;

  News(
      {this.key,
      this.url,
      this.description,
      this.image,
      this.name,
      this.source,
      this.date});

  News.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    url = json['url'];
    description = json['description'];
    image = json['image'];
    name = json['name'];
    source = json['source'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['url'] = this.url;
    data['description'] = this.description;
    data['image'] = this.image;
    data['name'] = this.name;
    data['source'] = this.source;
    data['date'] = this.date;
    return data;
  }
}
