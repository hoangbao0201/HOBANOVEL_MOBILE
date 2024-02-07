import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NovelDetailServices {

  // Get Novels Emerging
  Future<dynamic> getChaptersNovel({
    required BuildContext context,
    required int novelId,
    required int take,
    required int skip
  }) async {
    try {
      http.Response chaptersNovelRes = await http.get(
        Uri.parse("https://hobanovel-server.adaptable.app/api/chapters/$novelId?take=$take&skip=$skip")
      );

      return jsonDecode(chaptersNovelRes.body);
    } catch(error) {
      throw Exception('Failed to fetch Novels Emerging: $error');
    }
  }

}