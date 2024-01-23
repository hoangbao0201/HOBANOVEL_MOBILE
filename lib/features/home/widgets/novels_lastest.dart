
import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';

class NovelsLastest extends StatefulWidget {
  const NovelsLastest({super.key});

  @override
  State<NovelsLastest> createState() => _NovelsLastestState();
}

class _NovelsLastestState extends State<NovelsLastest> {
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
                      "Mới nhất",
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
                height: 180,
                child: ListView.builder(
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                    },
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
                          SizedBox(height: 3),
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