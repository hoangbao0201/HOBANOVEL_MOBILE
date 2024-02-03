import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hobanovel/common/widgets/novel_evaluate.dart';
import 'package:hobanovel/features/chapter_detail/screen/chapter_detail_screen.dart';

class NovelDetailScreen extends StatefulWidget {
  static const String routeName = '/novel-details';
  final dynamic novel;
  const NovelDetailScreen({Key? key, required this.novel}): super(key: key);

  @override
  State<NovelDetailScreen> createState() => _NovelDetailScreenState();
}

class _NovelDetailScreenState extends State<NovelDetailScreen> {

  void navigateToChapterDetailScreen() {
    Navigator.pushNamed(context, ChapterDetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 240.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  title: SingleChildScrollView(
                    child: Container(
                      height: 110,
                      width: 240,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 110,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                    widget.novel["thumbnail"] ?? "",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Container(
                                  height: 110,
                                  // color: Colors.green,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        widget.novel["title"] ?? "",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 11,
                                            height: 1.2,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 2),
                                      Row(
                                        children: [
                                          Text(
                                            "Bởi ",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 10,
                                                height: 1.2,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            widget.novel["author"]["name"] ?? "",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 10,
                                              height: 1.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            NovelEvaluate(
                                                size: 10,
                                                pointEvaluate: 4,
                                                isReadOnly: true),
                                            Text(
                                              "4.9",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              " (6 đánh giá)",
                                              style: TextStyle(
                                                  fontSize: 6,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            InkWell(
                                              onTap: navigateToChapterDetailScreen,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(9), // Điều chỉnh bán kính để thay đổi độ cong của góc
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                                                  color: Color(0xFF205D84),
                                                  child: Text(
                                                    "Đọc truyện",
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      color: Colors.white,
                                                      height: 1.2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            InkWell(
                                              onTap: () {
                                              },
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(9), // Điều chỉnh bán kính để thay đổi độ cong của góc
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                                                  color: Colors.white,
                                                  child: Text(
                                                    "+",
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      color: Color(0xFF205D84),
                                                      height: 1.2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                                                        
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  background: SizedBox(
                    height: 200,
                    child: ClipRRect(
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                        child: Image.network(
                            widget.novel["thumbnail"] ??
                                "",
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                    ),
                    tabs: [
                      Tab(text: 'Giới thiệu'),
                      Tab(text: 'Đánh giá'),
                      Tab(text: 'Bình luận'),
                      Tab(text: 'D.S Chương'),
                    ],
                  ),
                ),
                pinned: false,
              ),
            ];
          },
          body: TabBarView(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Text(
                          widget.novel["description"].replaceFirst("\t", "\n\n\t") ?? "",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black87
                          ),
                        ),
                      ),
                    ),
                  ]
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Content for Tab 2'),
                  ]
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Content for Tab 3'),
                  ]
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Content for Tab 4'),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}