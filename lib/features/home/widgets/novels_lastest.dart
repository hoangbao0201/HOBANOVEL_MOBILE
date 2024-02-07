import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';
import 'package:hobanovel/models/novel.dart';

class NovelsLastest extends StatefulWidget {
  final List<Novel>? novels;
  const NovelsLastest({Key? key, required this.novels}) : super(key: key);

  @override
  State<NovelsLastest> createState() => _NovelsLastestState();
}

class _NovelsLastestState extends State<NovelsLastest> {
  void navigateToNovelDetailScreen(novel) {
    Navigator.pushNamed(context, NovelDetailScreen.routeName, arguments: novel);
  }

  @override
  Widget build(BuildContext context) {
    return widget.novels == null || widget.novels!.isEmpty
        ? Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 20.0),
          )
        : Container(
            height: 230,
            color: Colors.black,
            padding: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                          "Mới đăng",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.keyboard_arrow_right,
                            color: Colors.white, size: 25),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => navigateToNovelDetailScreen(
                                widget.novels![index]),
                            child: Container(
                              width: 100,
                              margin: const EdgeInsets.only(right: 12.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.network(
                                        GlobalVariables.urlImage +
                                                "c_limit,w_200/" +
                                                widget
                                                    .novels![index].thumbnail ??
                                            "",
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    widget.novels![index].title ?? "",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  )
                                ],
                              ),
                            ),
                          )),
                ),
              ],
            ));
  }
}
