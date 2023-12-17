import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postId;
  final String username;
  final datePublished;
  final String postUrl;
  final String profileImage;
  final likes;

  Post({
    required this.description,
    required this.uid,
    required this.postId,
    required this.username,
    required this.datePublished,
    required this.profileImage,
    required this.postUrl,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
    'username': username,
    'uid': uid,
    'description': description,
    'postId': postId,
    'datePublished': datePublished,
    'profileImage': profileImage,
    'likes': likes,
    'postUrl': postUrl,
  };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      description: snapshot["description"],
      uid: snapshot["uid"],
      postId: snapshot["postId"],
      username: snapshot["username"],
      datePublished: snapshot["datePublished"],
      profileImage: snapshot["profileImage"],
      likes: snapshot["likes"],
      postUrl: snapshot["postUrl"],
    );
  }
}
