import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';

class NovelsFeatured extends StatefulWidget {
  final dynamic novels;
  const NovelsFeatured({Key? key, required this.novels}) : super(key: key);

  @override
  State<NovelsFeatured> createState() => _NovelsFeaturedState();
}

class _NovelsFeaturedState extends State<NovelsFeatured> {
  void navigateToNovelDetailScreen() {
    Navigator.pushNamed(context, NovelDetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return widget.novels == null
        ? Container(
            width: double.infinity,
            height: 510,
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10.0),
          )
        : Container(
            height: 490,
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
                          "Đề cử",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.keyboard_arrow_right,
                            color: Colors.black, size: 25),
                      ],
                    ),
                  ),
                ),
                GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 208),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: navigateToNovelDetailScreen,
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  widget.novels["novels"][index]["thumbnail"] ?? "",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              widget.novels["novels"][index]["title"] ?? "",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              GlobalVariables.dataGenres[widget.novels["novels"][index]
                                          ["genre"]
                                      .toString()] ??
                                  "",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          );
  }
}
