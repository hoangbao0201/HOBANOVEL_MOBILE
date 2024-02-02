import 'dart:convert';

class Chapter {
  final String chapterId;
  final String novelName;
  final String novelSlug;
  final String title;
  final String creator;
  final String creatorId;
  final String content;
  final String chapterNumber;
  final String updatedAt;
  final String novelId;
  final String views;
  final String chapterCount;

  Chapter({
    required this.chapterId,
    required this.novelName,
    required this.novelSlug,
    required this.title,
    required this.creator,
    required this.creatorId,
    required this.content,
    required this.chapterNumber,
    required this.updatedAt,
    required this.novelId,
    required this.views,
    required this.chapterCount,
  });

  Map<String, dynamic> toMap() {
    return {
      'chapterId': chapterId,
      'novelName': novelName,
      'novelSlug': novelSlug,
      'title': title,
      'creator': creator,
      'creatorId': creatorId,
      'content': content,
      'chapterNumber': chapterNumber,
      'updatedAt': updatedAt,
      'novelId': novelId,
      'views': views,
      'chapterCount': chapterCount,
    };
  }

  factory Chapter.fromMap(Map<String, dynamic> map) {
    return Chapter(
      chapterId: map['chapterId'] ?? '',
      novelName: map['novelName'] ?? '',
      novelSlug: map['novelSlug'] ?? '',
      title: map['title'] ?? '',
      creator: map['creator'] ?? '',
      creatorId: map['creatorId'] ?? '',
      content: map['content'] ?? '',
      chapterNumber: map['chapterNumber'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      novelId: map['novelId'] ?? '',
      views: map['views'] ?? '',
      chapterCount: map['chapterCount'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Chapter.fromJson(String source) =>
      Chapter.fromMap(json.decode(source));
}