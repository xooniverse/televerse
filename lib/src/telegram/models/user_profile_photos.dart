part of models;

/// This object represent a user's profile pictures.
class UserProfilePhotos {
  /// Total number of profile pictures the target user has
  int totalCount;

  /// Requested profile pictures (in up to 4 sizes each)
  List<List<PhotoSize>> photos;

  UserProfilePhotos({required this.totalCount, required this.photos});

  factory UserProfilePhotos.fromJson(Map<String, dynamic> json) {
    return UserProfilePhotos(
      totalCount: json['total_count'],
      photos: List<List<PhotoSize>>.from(json['photos'].map(
          (x) => List<PhotoSize>.from(x.map((x) => PhotoSize.fromJson(x))))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'photos': List<dynamic>.from(
        photos.map(
          (x) => List<dynamic>.from(
            x.map(
              (x) => x.toJson(),
            ),
          ),
        ),
      ),
    }..removeWhere((key, value) => value == null);
  }
}
