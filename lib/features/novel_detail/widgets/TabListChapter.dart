
import 'package:flutter/material.dart';
import 'package:hobanovel/features/novel_detail/services/novel_detail_services.dart';

class TabListChapter extends StatefulWidget {
  final int novelId;
  TabListChapter({required this.novelId});

  @override
  State<TabListChapter> createState() => _TabListChapterState();
}

class _TabListChapterState extends State<TabListChapter> {
  late Future<dynamic> _chaptersFuture;
  final NovelDetailServices novelDetailServices = NovelDetailServices();

  Future<dynamic> _fetchChapters() async {
    return await novelDetailServices.getChaptersNovel(
      context: context, 
      novelId: widget.novelId, 
      take: 10, 
      skip: 0
    );
  }

  @override
  void initState() {
    super.initState();
    _chaptersFuture = _fetchChapters();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: _chaptersFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Failed to load chapters'));
        } else {
          dynamic chaptersData = snapshot.data;
          List<dynamic>? chapters = chaptersData != null ? chaptersData["chapters"] : null;
          return chapters != null
              ? ListView.builder(
                  itemCount: chapters.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Container(
                        child: Row(
                          children: [
                            Text(
                              (index + 1).toString(),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                chapters[index]["title"] ?? "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              : Container();
        }
      },
    );
  }
}