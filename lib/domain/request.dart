enum HTTPMethod { post, get }

class Request {
  // MARK: - Variables

  final HTTPMethod method;
  final String path;
  final dynamic data;
  final Map<String, dynamic>? headers;

  // MARK: - Constructor

  const Request({
    required this.method,
    required this.path,
    required this.data,
    this.headers,
  });
}
