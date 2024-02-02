import 'package:flutter/material.dart';
import 'package:hobanovel/common/widgets/novel_evaluate.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';

class NovelsCompleted extends StatefulWidget {
  const NovelsCompleted({super.key});

  @override
  State<NovelsCompleted> createState() => _NovelsCompletedState();
}

class _NovelsCompletedState extends State<NovelsCompleted> {

  void navigateToNovelDetailScreen() {
    Navigator.pushNamed(context, NovelDetailScreen.routeName);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 13, top: 10, right: 0, bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 6),
            child: SizedBox(
              child: Row(
                children: [
                  Text(
                    "Mới hoàn thành",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 42,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 25),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  // updateActiveIndex(index);
                },
                child: Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 0, top: 0, right: 13, bottom: 0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: navigateToNovelDetailScreen,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: SizedBox.fromSize(
                                child: Image.network(
                                  GlobalVariables.novelsNew[(index*3+2)-2]["book_poster"]["150"] ?? "",
                                  fit: BoxFit.cover,
                                  width: 70,
                                  height: 90,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                height: 90,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      GlobalVariables.novelsNew[(index*3+2)-2]["book_name"] ?? "",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      "Đô thị" ?? "",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    NovelEvaluate(pointEvaluate: 4, isReadOnly: true),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: navigateToNovelDetailScreen,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: SizedBox.fromSize(
                                child: Image.network(
                                  GlobalVariables.novelsNew[(index*3+2)-1]["book_poster"]["150"] ?? "",
                                  fit: BoxFit.cover,
                                  width: 70,
                                  height: 90,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                height: 90,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      GlobalVariables.novelsNew[(index*3+2)-1]["book_name"] ?? "",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      "Đô thị" ?? "",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    NovelEvaluate(pointEvaluate: 4, isReadOnly: true),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: navigateToNovelDetailScreen,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: SizedBox.fromSize(
                                child: Image.network(
                                  GlobalVariables.novelsNew[(index*3+2)]["book_poster"]["150"] ?? "",
                                  fit: BoxFit.cover,
                                  width: 70,
                                  height: 90,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                height: 90,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      GlobalVariables.novelsNew[(index*3+2)]["book_name"] ?? "",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      "Đô thị" ?? "",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    NovelEvaluate(pointEvaluate: 4, isReadOnly: true),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
