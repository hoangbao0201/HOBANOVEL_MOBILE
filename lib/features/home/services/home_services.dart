import 'dart:convert';

import 'package:flutter/material.dart';
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

      return jsonDecode(novelsRes.body);
    } catch(error) {
      throw Exception('Failed to fetch Novels Emerging: $error');
    }
  }

}