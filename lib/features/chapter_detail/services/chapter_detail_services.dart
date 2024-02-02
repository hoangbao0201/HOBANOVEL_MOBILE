import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hobanovel/model/chapter.dart';
import 'package:http/http.dart' as http;


class ChapterDetailServices {
  Future<dynamic> fetchChapterDetail({
    required BuildContext context,
    required String slug,
    required int chapterNumber
  }) async {
    Chapter chapter = Chapter(
      chapterId: '',
      novelName: '',
      novelSlug: '',
      title: '',
      creator: '',
      creatorId: '',
      content: '',
      chapterNumber: '',
      updatedAt: '',
      novelId: '',
      views: '',
      chapterCount: '',
    );
    try {
      http.Response res = await http.get(
        Uri.parse('https://hobanovel-be.azurewebsites.net/api/chapters/chapter-detail/$slug/chapter-$chapterNumber'),
        headers: <String, String>{},
      );
      return jsonDecode(res.body);
    }
    catch (error) {
      throw Exception('Failed to fetch chapter detail: $error');
    }
  }
}