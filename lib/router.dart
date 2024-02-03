
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobanovel/features/chapter_detail/screen/chapter_detail_screen.dart';
import 'package:hobanovel/features/home/screen/home_screen.dart';
import 'package:hobanovel/features/profile/screen/profile_screen.dart';
import 'package:hobanovel/features/bookshelf/screen/bookshelf_screen.dart';
import 'package:hobanovel/features/notification/screen/notification_screen.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';

// MaterialPageRoute
Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch(routeSettings.name) {
    case BookshelfScreen.routeName:
      return CupertinoPageRoute(
        settings: routeSettings,
        builder: (_) => const BookshelfScreen(),
      );
    case HomeScreen.routeName:
      return CupertinoPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case NotificationScreen.routeName:
      return CupertinoPageRoute(
        settings: routeSettings,
        builder: (_) => const NotificationScreen(),
      );
    case ProfileScreen.routeName:
      return CupertinoPageRoute(
        settings: routeSettings,
        builder: (_) => const ProfileScreen(),
      );
    case NovelDetailScreen.routeName:
      var novel = routeSettings.arguments as dynamic;
      return CupertinoPageRoute(
        settings: routeSettings,
        builder: (_) => NovelDetailScreen(novel: novel),
      );
    case ChapterDetailScreen.routeName:
      return CupertinoPageRoute(
        settings: routeSettings,
        builder: (_) => const ChapterDetailScreen(),
      );
    
    default:
      return CupertinoPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
} 