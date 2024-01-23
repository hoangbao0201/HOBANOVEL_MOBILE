import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';

class NovelsPopular extends StatefulWidget {
  const NovelsPopular({super.key});

  @override
  State<NovelsPopular> createState() => _NovelsPopularState();
}

class _NovelsPopularState extends State<NovelsPopular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 0.0),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Thịnh hành",
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 5.0),
            child: SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 3,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    // updateActiveIndex(index);
                  },
                  child: Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(
                                      "Đô thị" ?? "",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "132K lượt đọc" ?? "",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(
                                      "Đô thị" ?? "",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "132K lượt đọc" ?? "",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(
                                      "Đô thị" ?? "",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14
                                      ),
                                    ),
                                    Text(
                                      "132K lượt đọc" ?? "",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
