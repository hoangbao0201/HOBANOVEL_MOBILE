

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NovelEvaluate extends StatefulWidget {
  final double pointEvaluate;
  final double size;
  final bool isReadOnly;
  const NovelEvaluate({ Key? key, double? pointEvaluate, double? size, bool? isReadOnly }): pointEvaluate = pointEvaluate ?? 1, size = size ?? 16, isReadOnly = isReadOnly ?? false, super(key: key);

  @override
  State<NovelEvaluate> createState() => Novel_EvaluateState();
}

class Novel_EvaluateState extends State<NovelEvaluate> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      ignoreGestures: widget.isReadOnly, 
      initialRating: widget.pointEvaluate,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: widget.size,
      itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),

      onRatingUpdate: widget.isReadOnly ? (rating) {} : (rating) { print(rating); },
    );
  }
}