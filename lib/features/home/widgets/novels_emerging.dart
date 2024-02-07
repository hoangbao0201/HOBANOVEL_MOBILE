import 'package:flutter/material.dart';
import 'package:hobanovel/common/widgets/novel_evaluate.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';
import 'package:hobanovel/models/novel.dart';

class NovelsEmerging extends StatefulWidget {
  final List<Novel>? novels;
  const NovelsEmerging({Key? key, required this.novels}) : super(key: key);

  @override
  State<NovelsEmerging> createState() => _NovelsEmergingState();
}

class _NovelsEmergingState extends State<NovelsEmerging> {
  int _activeIndex = 0;

  void updateActiveIndex(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  void navigateToNovelDetailScreen(novel) {
    Navigator.pushNamed(context, NovelDetailScreen.routeName, arguments: novel);
  }

  @override
  Widget build(BuildContext context) {
    return widget.novels == null || widget.novels!.isEmpty
        ? Container(
            width: double.infinity,
            height: 320,
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10.0),
          )
        : Container(
            height: 320,
            color: Colors.white,
            padding: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Mới nhất",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.keyboard_arrow_right,
                            color: Colors.black, size: 25),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.yellow,
                        height: 65,
                        child: ListView.builder(
                            itemCount: 9,
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {
                                    updateActiveIndex(index);
                                  },
                                  child: Container(
                                    height: 65,
                                    width: 50,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: _activeIndex == index
                                                ? Colors.black
                                                : Colors.transparent,
                                            width: 2.0),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: SizedBox.fromSize(
                                        child: Image.network(
                                          GlobalVariables.urlImage +
                                                  "c_limit,w_200/" +
                                                  widget.novels![index]
                                                      .thumbnail ??
                                              "",
                                          fit: BoxFit.cover,
                                          height: 200,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                      ),
                      Container(
                        // color: Colors.green,
                        height: 180,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.novels![_activeIndex].title ?? "",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    widget.novels![_activeIndex].description ??
                                        "",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  const NovelEvaluate(
                                      pointEvaluate: 4, isReadOnly: true),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () =>
                                            navigateToNovelDetailScreen(
                                                widget.novels![_activeIndex]),
                                        child: Text(
                                          "Đọc ngay",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                            ),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.black),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () => navigateToNovelDetailScreen(
                                  widget.novels![_activeIndex]),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: SizedBox.fromSize(
                                  child: Image.network(
                                    GlobalVariables.urlImage +
                                            "c_limit,w_200/" +
                                            widget.novels![_activeIndex]
                                                .thumbnail ??
                                        "",
                                    fit: BoxFit.cover,
                                    width: 140,
                                    height: 180,
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
              ],
            ),
          );
  }
}
