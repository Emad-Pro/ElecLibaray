class AuthorModel {
  final String authorName;
  final String authorImage;
  final int? authorId;
  final String authorDetails;
  final String authorDate;

  AuthorModel({
    required this.authorName,
    required this.authorImage,
    this.authorId,
    required this.authorDetails,
    required this.authorDate,
  });
  factory AuthorModel.fromJson(Map<String, dynamic> json) {
    return AuthorModel(
      authorName: json['authorName'],
      authorImage: json['authorImage'],
      authorDetails: json['authorDetails'],
      authorDate: json['authorDate'],
    );
  }
  Map<String, dynamic> toMap() => {
        "authorName": authorName,
        "authorImage": authorImage,
        "authorDetails": authorDetails,
        "authorDate": authorDate,
      };
}
