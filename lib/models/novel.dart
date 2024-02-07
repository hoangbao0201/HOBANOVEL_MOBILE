class Novel {
  final int novelId;
  final String thumbnail;
  final String createdAt;
  final String updatedAt;
  final String title;
  final Author author;
  final int genre;
  final PostedBy postedBy;
  final String description;
  final Count count;

  Novel({
    required this.novelId,
    required this.thumbnail,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.author,
    required this.genre,
    required this.postedBy,
    required this.description,
    required this.count,
  });
  
  factory Novel.fromJson(Map<String, dynamic> json) {
    return Novel(
      novelId: json['novelId'],
      thumbnail: json['thumbnail'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      title: json['title'],
      author: Author.fromJson(json['author']),
      genre: json['genre'],
      postedBy: PostedBy.fromJson(json['postedBy']),
      description: json['description'],
      count: Count.fromJson(json['_count']),
    );
  }
}

class Author {
  final String name;

  Author({required this.name});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      name: json['name'],
    );
  }
}

class PostedBy {
  final String name;
  final int userId;
  final String username;

  PostedBy({required this.name, required this.userId, required this.username});

  factory PostedBy.fromJson(Map<String, dynamic> json) {
    return PostedBy(
      name: json['name'],
      userId: json['userId'],
      username: json['username'],
    );
  }
}

class Count {
  final int chapters;

  Count({required this.chapters});

  factory Count.fromJson(Map<String, dynamic> json) {
    return Count(
      chapters: json['chapters'],
    );
  }
}
