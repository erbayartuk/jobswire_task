import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jobswire_bootcamp/model/newsModel.dart';
import 'package:jobswire_bootcamp/service/IFutureService.dart';

class FutureService extends IFutureService {
  Dio _dio = Dio(BaseOptions(baseUrl: "https://api.collectapi.com"));

  @override
  Future<NewsModel> getNews() async {
    final response = await _dio.get("/news/getNews?country=tr&tag=general",
        options: Options(headers: {
          "content-type": "application/json",
          "authorization":
              "apikey 5t3zrE5knkMjZDUbhRtvMC:5rR0EMel977fXU4rx4qsuz"
        }));

    NewsModel newsData = NewsModel.fromJson(response.data);

    return newsData;
  }
}
