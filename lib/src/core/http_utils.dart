// File: lib/src/core/http_utils.dart

/// Utilities for working with HTTP requests and responses.
class HttpUtils {
  /// Checks if an HTTP status code represents a successful response.
  ///
  /// Returns true for status codes in the 200-299 range.
  static bool isSuccessStatusCode(int statusCode) {
    return statusCode >= 200 && statusCode < 300;
  }

  /// Checks if an HTTP status code represents a client error.
  ///
  /// Returns true for status codes in the 400-499 range.
  static bool isClientError(int statusCode) {
    return statusCode >= 400 && statusCode < 500;
  }

  /// Checks if an HTTP status code represents a server error.
  ///
  /// Returns true for status codes in the 500-599 range.
  static bool isServerError(int statusCode) {
    return statusCode >= 500 && statusCode < 600;
  }

  /// Gets a human-readable description for common HTTP status codes.
  static String getStatusDescription(int statusCode) {
    switch (statusCode) {
      case 200:
        return 'OK';
      case 400:
        return 'Bad Request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return 'Not Found';
      case 409:
        return 'Conflict';
      case 429:
        return 'Too Many Requests';
      case 500:
        return 'Internal Server Error';
      case 502:
        return 'Bad Gateway';
      case 503:
        return 'Service Unavailable';
      case 504:
        return 'Gateway Timeout';
      default:
        return 'HTTP $statusCode';
    }
  }

  /// Sanitizes a URL by removing sensitive information like bot tokens.
  ///
  /// This is useful for logging purposes to avoid exposing tokens in logs.
  static String sanitizeUrl(String url) {
    // Replace bot tokens with [TOKEN] placeholder
    final tokenRegex = RegExp(r'bot\d+:[A-Za-z0-9_-]+');
    return url.replaceAll(tokenRegex, 'bot[TOKEN]');
  }

  /// Extracts the file extension from a filename or URL.
  ///
  /// Returns the extension in lowercase without the dot, or null if no extension found.
  static String? getFileExtension(String filename) {
    final lastDot = filename.lastIndexOf('.');
    if (lastDot == -1 || lastDot == filename.length - 1) {
      return null;
    }
    return filename.substring(lastDot + 1).toLowerCase();
  }

  /// Determines MIME type based on file extension.
  ///
  /// Returns a common MIME type for known extensions, or 'application/octet-stream' for unknown types.
  static String getMimeType(String filename) {
    final extension = getFileExtension(filename);
    if (extension == null) return 'application/octet-stream';

    const mimeTypes = {
      // Images
      'jpg': 'image/jpeg',
      'jpeg': 'image/jpeg',
      'png': 'image/png',
      'gif': 'image/gif',
      'webp': 'image/webp',
      'bmp': 'image/bmp',
      'tiff': 'image/tiff',

      // Audio
      'mp3': 'audio/mpeg',
      'wav': 'audio/wav',
      'ogg': 'audio/ogg',
      'aac': 'audio/aac',
      'm4a': 'audio/mp4',
      'flac': 'audio/flac',

      // Video
      'mp4': 'video/mp4',
      'avi': 'video/x-msvideo',
      'mkv': 'video/x-matroska',
      'webm': 'video/webm',
      'mov': 'video/quicktime',
      '3gp': 'video/3gpp',

      // Documents
      'pdf': 'application/pdf',
      'doc': 'application/msword',
      'docx':
          'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
      'xls': 'application/vnd.ms-excel',
      'xlsx':
          'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
      'ppt': 'application/vnd.ms-powerpoint',
      'pptx':
          'application/vnd.openxmlformats-officedocument.presentationml.presentation',
      'txt': 'text/plain',
      'json': 'application/json',
      'xml': 'application/xml',
      'html': 'text/html',
      'css': 'text/css',
      'js': 'application/javascript',

      // Archives
      'zip': 'application/zip',
      'rar': 'application/vnd.rar',
      '7z': 'application/x-7z-compressed',
      'tar': 'application/x-tar',
      'gz': 'application/gzip',
    };

    return mimeTypes[extension] ?? 'application/octet-stream';
  }

  /// Validates if a string is a valid URL.
  static bool isValidUrl(String url) {
    try {
      final uri = Uri.parse(url);
      return uri.hasScheme && (uri.scheme == 'http' || uri.scheme == 'https');
    } catch (e) {
      return false;
    }
  }

  /// Formats bytes into a human-readable string.
  ///
  /// Example: formatBytes(1024) returns "1.0 KB"
  static String formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';

    const units = ['KB', 'MB', 'GB', 'TB'];
    double size = bytes / 1024;
    int unitIndex = 0;

    while (size >= 1024 && unitIndex < units.length - 1) {
      size /= 1024;
      unitIndex++;
    }

    return '${size.toStringAsFixed(1)} ${units[unitIndex]}';
  }
}
