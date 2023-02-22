part of models;

/// This object represents a file ready to be downloaded. The file can be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile.
class File {
  /// Unique identifier for this file
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  final String fileUniqueId;

  /// File size, if known
  final int fileSize;

  /// File path. Use https://api.telegram.org/file/bot<token>/<file_path> to get the file.
  final String filePath;

  /// Constructs the File object.
  const File({
    required this.fileId,
    required this.fileUniqueId,
    required this.fileSize,
    required this.filePath,
  });

  /// Creates the File object from the given JSON model.
  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      fileId: json['file_id'],
      fileUniqueId: json['file_unique_id'],
      fileSize: json['file_size'],
      filePath: json['file_path'],
    );
  }

  /// Returns the JSON representation of the File object.
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'file_size': fileSize,
      'file_path': filePath,
    }..removeWhere((key, value) => value == null);
  }

  /// Returns the download URL for the particular file as [String]
  ///
  /// This method uses the latest Bot token used in your code. If you have multiple bots running with the same code, you might want to
  /// pass the [token] parameter that can be used to generate the download URL.
  String getDownloadUrl([String? token]) {
    return 'https://api.telegram.org/file/bot${token ?? Televerse.instance.token}/$filePath';
  }

  /// Returns the [Uri] object of the download URL. This is an shorthand method for:
  ///
  /// ```dart
  /// Uri.parse(file.getDownloadUrl())
  /// ```
  ///
  /// Pass [token] parameter if you want to get the download url for a specific bot.
  Uri getDownloadURI([String? token]) {
    return Uri.parse(getDownloadUrl(token));
  }

  /// This is an advanced method in Televerse. This returns `Uint8List?` representing the byte data of the file.
  ///
  /// This method basically gets the file and decodes it's byte data. This can be very useful if you want to download the file or save it.
  ///
  /// Use the [token] parameter to specify the bot token to be used - if you're running multiple bots with the same code.
  Future<Uint8List?> getBytes([String? token]) async {
    try {
      final r = await get(getDownloadURI(token));
      if (r.statusCode == 200) {
        return r.bodyBytes;
      } else {
        throw TeleverseException("Couldn't fetch the file data.");
      }
    } catch (err) {
      return null;
    }
  }

  /// This is an advanced method of Televerse. This method downloads the particular file and saves it to the
  /// specified [path].
  ///
  /// Specify the [token] parameter if you want to use a specific bot token.
  ///
  /// Note: Make sure the [path] is a valid path and the directory exists.
  Future<io.File?> download({String? path, String? token}) async {
    path ??= io.Directory.current.path;

    String fpath;
    final name = filePath.split("/").last;
    final ext = name.split(".").last;

    final bytes = await getBytes(token);
    if (bytes == null) return null;
    if (path.endsWith(".$ext")) {
      fpath = path;
    } else {
      fpath = "$path/$name";
    }

    final file = io.File(fpath);
    if (!file.existsSync()) {
      file.createSync();
    }
    return await file.writeAsBytes(bytes);
  }

  String get fileName => filePath.split("/").last;
}
