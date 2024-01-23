
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';

class NovelDetailScreen extends StatefulWidget {
  static const String routeName = '/novel-details';
  const NovelDetailScreen({super.key});

  @override
  State<NovelDetailScreen> createState() => _NovelDetailScreenState();
}

class _NovelDetailScreenState extends State<NovelDetailScreen> {
  bool _stretch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(60),
      //   child: AppBar(
      //     title: Container(
      //       child: Text("Novel Detail")
      //     ),
      //   ),
      // ),
      body: CustomScrollView(
        physics: ScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            stretch: _stretch,
            onStretchTrigger: () async {},
            stretchTriggerOffset: 300.0,
            expandedHeight: 230.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          GlobalVariables.novelsNew[1]["book_poster"]["150"] ?? "",
                          fit: BoxFit.cover,
                          width: 72,
                          height: 110,
                        ),
                      )
                    ),
                    SizedBox(width: 6),
                    Flexible(
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GlobalVariables.novelsNew[1]["book_name"] ?? "",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 11,
                                height: 1.2,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Bởi Nguyễn Hoàng Bảo",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 10,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              background: SizedBox(
                height: 200,
                child: ClipRRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Image.network(
                      GlobalVariables.novelsNew[1]["book_poster"]["150"] ?? "",
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index',
                      // textScaler: const TextScaler.linear(5.0)
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
// GlobalVariables.novelsNew[1]["book_synopsis"] ?? "",