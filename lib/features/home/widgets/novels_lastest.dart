
import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';

class NovelsLastest extends StatefulWidget {
  const NovelsLastest({super.key});

  @override
  State<NovelsLastest> createState() => _NovelsLastestState();
}

class _NovelsLastestState extends State<NovelsLastest> {

  void navigateToNovelDetailScreen() {
    Navigator.pushNamed(context, NovelDetailScreen.routeName);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 0.0),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mới đăng",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
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
              padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 0.0),
              child: SizedBox(
                height: 170,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: navigateToNovelDetailScreen,
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.symmetric(horizontal: 6.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  GlobalVariables.novelsNew[index]["book_poster"]["150"] ?? "",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            GlobalVariables.novelsNew[index]["book_name"] ?? "",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ),
            ),
        ],
      )
    );
  }
}