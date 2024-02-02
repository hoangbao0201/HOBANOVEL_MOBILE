import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hobanovel/common/widgets/novel_evaluate.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:hobanovel/features/chapter_detail/screen/chapter_detail_screen.dart';

class NovelDetailScreen extends StatefulWidget {
  static const String routeName = '/novel-details';
  const NovelDetailScreen({super.key});

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
                                    GlobalVariables.novelsNew[1]["book_poster"]["150"] ?? "",
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
                                        GlobalVariables.novelsNew[1]["book_name"] ?? "",
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
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 10,
                                                height: 1.2,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            "Nguyễn Hoàng Bảo",
                                            maxLines: 2,
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
                        imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Image.network(
                            GlobalVariables.novelsNew[1]["book_poster"]["150"] ??
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
                child: Center(
                  child: Text('Content for Tab 1'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Content for Tab 2'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Content for Tab 3'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Content for Tab 4'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (_, i) => Card(
            //       margin: const EdgeInsets.all(10),
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             Expanded(
            //               flex: 1,
            //               child: Text(
            //                 i.toString(),
            //               ),
            //             ),
            //             const Expanded(
            //               flex: 3,
            //               child: Text('Text'),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     childCount: 100,
            //   ),
            // ),
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