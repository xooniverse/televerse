part of 'models.dart';

/// The File to be uploaded.
class LocalFile {
  /// The file name of the file.
  final String? fileName;

  /// The actual bytes of the file.
  final Uint8List bytes;

  /// MIME content type for the file
  final String? contentType;

  /// Additional headers
  final Map<String, List<String>>? headers;

  /// Constructs the Local File with the given bytes, and file name.
  const LocalFile(
    this.bytes, {
    this.fileName,
    this.contentType,
    this.headers,
  });
}

/// Represents a list of maps containing key-value pairs for multipart files.
///
/// Each map associates a field key (a `String`) with its corresponding
/// `LocalFile` object. This type is used to represent a collection
/// of files to be uploaded in a multipart request.
typedef PayloadFiles = List<Map<String, LocalFile>>;

/// Represents a payload object used for making API calls.
///
/// This class encapsulates the data to be sent to an API endpoint. It can
/// contain both standard parameters and multipart files for upload.
///
/// Properties:
///
/// * [params]: An optional map containing additional parameters for the API call.
///   This map holds key-value pairs where keys are of type `String` and values
///   can be of any type. It allows for sending additional data along with the
///   request to the API.
/// * [files]: A list of maps containing key-value pairs for multipart files.
///   Each map associates a field key (a `String`) with its corresponding
///   `LocalFile` object. This type is typically used to represent a collection
///   of files to be uploaded in a multipart request.
///
class Payload {
  /// JSON encodable map containing parameters for the API call.
  ///
  /// This map holds key-value pairs where keys are of type `String` and values
  /// can be of any type. It allows for sending additional data along with the
  /// request to the API.
  Map<String, dynamic> params;

  /// Represents a list of maps containing key-value pairs for multipart files.
  ///
  /// Each map associates a field key (a `String`) with its corresponding
  /// `LocalFile` object. This type is used to represent a collection
  /// of files to be uploaded in a multipart request.
  PayloadFiles? files;

  /// Constructs a new `Payload` object.
  ///
  /// This constructor allows you to create a `Payload` object by providing optional
  /// parameters and a list of multipart files.
  ///
  /// Parameters:
  ///
  /// * [params]: An optional map containing additional parameters for the API call.
  ///   This map holds key-value pairs where keys are of type `String` and values
  ///   can be of any type. It allows for sending additional data along with the
  ///   request to the API. (See [Payload.params] for details)
  /// * [files]: A list of maps containing key-value pairs for multipart files.
  ///   Each map associates a field key (a `String`) with its corresponding
  ///   `LocalFile` object. This type is typically used to represent a collection
  ///   of files to be uploaded in a multipart request. (See [Payload.files] for details)
  Payload([Map<String, dynamic>? params, this.files]) : params = params ?? {};

  /// Creates a new `Payload` instance from an existing map of parameters and a list of multipart files.
  ///
  /// This factory constructor is useful when you already have the data for the
  /// payload in separate variables and want to create a new `Payload` object
  /// without the need to construct a new map or list.
  ///
  /// Parameters:
  ///
  /// * [params]: An optional map containing additional parameters for the API call.
  ///   See [Payload.params] for details.
  /// * [files]: A list of maps containing key-value pairs for multipart files.
  ///   See [Payload.files] for details.
  ///
  /// Returns:
  ///
  /// A new `Payload` object with the provided parameters and files.
  factory Payload.from([Map<String, dynamic>? params, PayloadFiles? files]) =>
      Payload(
        params,
        files,
      );

  /// Get the parameter value for the key
  Object? operator [](String key) {
    return params[key];
  }

  /// Set the parameter value for the key
  void operator []=(String key, dynamic value) {
    params[key] = value;
  }
}
