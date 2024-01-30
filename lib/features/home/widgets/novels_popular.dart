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
      padding: EdgeInsets.only(left: 13, top: 10, right: 0, bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 6),
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
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ],
      ),
    );
  }
}
