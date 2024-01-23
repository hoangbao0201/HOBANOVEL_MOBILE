
import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';

class NovelsEmerging extends StatefulWidget {
  const NovelsEmerging({super.key});

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

  void navigateToNovelDetailScreen() {
    Navigator.pushNamed(context, NovelDetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 0.0),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mới nhất",
                      style: TextStyle(
                        fontSize: 18,
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
              padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
              child: SizedBox(
                height: 65,
                child: ListView.builder(
                  itemCount: GlobalVariables.novelsNew.length,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      updateActiveIndex(index);
                    },
                    child: Container(
                      height: 65,
                      width: 50,
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _activeIndex == index ? Colors.black : Colors.transparent,
                          width: 2.0
                        ),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: SizedBox.fromSize(
                            child: Image.network(
                              GlobalVariables.novelsNew[index]["book_poster"]["150"] ?? "",
                              fit: BoxFit.cover,
                              height: 200,
                            ),
                          ),
                        ),
                    ),
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 5.0),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              GlobalVariables.novelsNew[_activeIndex]["book_name"] ?? "",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              GlobalVariables.novelsNew[_activeIndex]["book_synopsis"] ?? "",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black54
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: navigateToNovelDetailScreen,
                                  child: Text("Đọc ngay", style: TextStyle(color: Colors.white),),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 6),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: SizedBox.fromSize(
                        child: Image.network(
                          GlobalVariables.novelsNew[_activeIndex]["book_poster"]["150"] ?? "",
                          fit: BoxFit.cover,
                          width: 140,
                          height: 180,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
      ),
    );
  }
}