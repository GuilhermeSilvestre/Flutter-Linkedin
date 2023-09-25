class Post {
  Post({
    required this.name,
    required this.profilepic,
    required this.text,
    required this.image,
    required this.numComments,
    required this.numDislikes,
    required this.numLikes,
    required this.numShares,
  });

  String name;

  String profilepic;

  String image;

  String text;

  int numLikes;

  int numDislikes;

  int numComments;

  int numShares;
}
