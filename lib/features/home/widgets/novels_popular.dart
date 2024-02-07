import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';
import 'package:hobanovel/models/novel.dart';

class NovelsPopular extends StatefulWidget {
  final List<Novel>? novels;
  const NovelsPopular({Key? key, required this.novels}) : super(key: key);

  @override
  State<NovelsPopular> createState() => _NovelsPopularState();
}

class _NovelsPopularState extends State<NovelsPopular> {
  void navigateToNovelDetailScreen(novel) {
    Navigator.pushNamed(context, NovelDetailScreen.routeName, arguments: novel);
  }

  @override
  Widget build(BuildContext context) {
    return widget.novels == null || widget.novels!.isEmpty
        ? Container(
            width: double.infinity,
            height: 480,
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 20.0),
          )
        : Container(
            // color: Colors.blueGrey[50],
            padding: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 20.0),
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
                          "Thịnh hành",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.keyboard_arrow_right,
                            color: Colors.black, size: 25),
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
                            onTap: () {},
                            child: Container(
                              width: 300,
                              padding: EdgeInsets.only(
                                  left: 0, top: 0, right: 13, bottom: 0),
                              child: widget.novels == null
                                  ? Container(
                                      height: 90,
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        NovelItem(
                                            novelData: widget
                                                .novels![(index * 3 + 2) - 2],
                                            onTap: () =>
                                                navigateToNovelDetailScreen(
                                                    widget.novels![
                                                        (index * 3 + 2) - 2])),
                                        NovelItem(
                                            novelData: widget
                                                .novels![(index * 3 + 2) - 1],
                                            onTap: () =>
                                                navigateToNovelDetailScreen(
                                                    widget.novels![
                                                        (index * 3 + 2) - 1])),
                                        NovelItem(
                                            novelData: widget
                                                .novels![(index * 3 + 2) - 0],
                                            onTap: () =>
                                                navigateToNovelDetailScreen(
                                                    widget.novels![
                                                        (index * 3 + 2) - 0])),
                                      ],
                                    ),
                            ),
                          )),
                ),
              ],
            ),
          );
  }
}

class NovelItem extends StatelessWidget {
  final Novel novelData;
  final VoidCallback onTap;
  NovelItem({required this.novelData, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: SizedBox.fromSize(
                child: Image.network(
                  GlobalVariables.urlImage +
                          "c_limit,w_200/" +
                          novelData!.thumbnail ??
                      "",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      novelData!.title ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Đô thị" ?? "",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                    Text(
                      "132K lượt đọc" ?? "",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
