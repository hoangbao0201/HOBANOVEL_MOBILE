import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hobanovel/features/chapter_detail/services/chapter_detail_services.dart';

class ChapterDetailScreen extends StatefulWidget {
  static const String routeName = '/chapter-details';
  const ChapterDetailScreen({super.key});

  @override
  State<ChapterDetailScreen> createState() => _ChapterDetailScreenState();
}

class _ChapterDetailScreenState extends State<ChapterDetailScreen> {
  dynamic chapter;
  final ChapterDetailServices chapterServices = ChapterDetailServices();

  void fetchChapterDetail() async {
    chapter = await chapterServices.fetchChapterDetail(
      context: context,
      chapterNumber: 1,
      slug: "toan-dan-linh-chu-than-thoai-bat-dau-ta-chi-gioi-lam-ruong"
    );
    if (chapter["success"] ?? false) {
      
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchChapterDetail();
  }

  String replaceBrTag(String input) {
    return input.replaceAll('<br>', '\n');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Text(
                  "Chương 1: Thiên hồ bắt đầu nhưng là phan phái",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 20,
                ),
                onPressed: () {
                  // Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // Html(
              //   data: """
              //   Vô Lượng Sơn, Kiếm Hồ Cung.<br><br>Nơi đây Non Sông Gấm Vóc, phong cảnh tú mỹ, chính là một chỗ hoàn cảnh thật tốt...
              //   """
              // ),
              // Text(chapter?["chapter"]["content"] ?? ""),
              Text(
                replaceBrTag(chapter?["chapter"]["content"] ?? "") ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87
                ),
              ),
            ],
          ),
        ));
  }
}