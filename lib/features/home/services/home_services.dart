import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hobanovel/models/novel.dart';
import 'package:http/http.dart' as http;

class HomeServices {

  // Get Novels Emerging
  Future<dynamic> getNovelsEmerging({
    required BuildContext context,
    required int take,
    required int skip
  }) async {
    try {
      http.Response novelsRes = await http.get(
        Uri.parse("https://hobanovel-server.adaptable.app/api/novels?take=$take&skip=$skip")
      );

      Map<String, dynamic> data = jsonDecode(novelsRes.body);

      if (data['success'] == true) {
        List<dynamic> novelsJson = data['novels'];
        List<Novel> novels = novelsJson.map((novelJson) => Novel.fromJson(novelJson)).toList();
        return novels;
      } else {
        throw Exception('API request failed: ${data['error']}');
      }
    } catch(error) {
      throw Exception('Failed to fetch Novels Emerging: $error');
    }
  }

}