// @dart=2.10
part of keyclic_sdk_api.api;

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};

// port from Java version
Iterable<QueryParam> _convertParametersForCollectionFormat(
  String name,
  dynamic value, {
  String collectionFormat = 'csv',
}) {
  // preconditions
  if (name == null || name.isEmpty || value == null) {
    throw ApiException(0, "Missing required params");
  }

  if (value is! List) {
    return <QueryParam>[
      QueryParam(name, _parameterToString(value)),
    ];
  }

  final List<dynamic> values = List<dynamic>.from(value);

  if (collectionFormat == 'multi') {
    return values
        .map((dynamic value) => QueryParam(name, _parameterToString(value)));
  }

  // get the delimiter (default: csv delimiter)
  final String delimiter = _delimiters[collectionFormat] ?? ',';

  final String joinedParameters =
      values.map((dynamic value) => _parameterToString(value)).join(delimiter);

  return <QueryParam>[
    QueryParam(name, joinedParameters),
  ];
}

/// Format the given parameter object into string.
String _parameterToString(dynamic value) {
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }

  if (value is Permission) {
    return Permission.encode(value).toString();
  }

  if (value is String) {
    return Uri.encodeQueryComponent(value);
  }

  return value.toString();
}
