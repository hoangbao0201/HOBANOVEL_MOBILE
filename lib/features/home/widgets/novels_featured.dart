import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';

class NovelsFeatured extends StatefulWidget {
  const NovelsFeatured({Key? key}) : super(key: key);

  @override
  State<NovelsFeatured> createState() => _NovelsFeaturedState();
}

class _NovelsFeaturedState extends State<NovelsFeatured> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 5.0),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Đề cử",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 42,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 25),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            child: GridView.builder(
              itemCount: 6,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 18,
                mainAxisSpacing: 12,
                mainAxisExtent: 220
              ),
              itemBuilder: (context, index) {
                final orderData = GlobalVariables.novelsNew[index];
                return GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              GlobalVariables.novelsNew[index]["book_poster"]["150"],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          GlobalVariables.novelsNew[index]["book_name"] ?? "",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Huyền huyễn",
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
            ),
          )
        ],
      ),
    );
  }
}

// Text(
//   GlobalVariables.novelsNew[index]["book_name"] ?? "",
//   maxLines: 2,
//   overflow: TextOverflow.ellipsis,
//   style: TextStyle(
//     fontSize: 12,
//     color: Colors.black54
//   ),
// ),
