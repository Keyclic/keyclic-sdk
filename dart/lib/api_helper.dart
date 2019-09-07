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

  List values = value as List;

  if (collectionFormat == 'multi') {
    return values.map((v) => QueryParam(name, _parameterToString(v)));
  }

  // get the delimiter (default: csv delimiter)
  final String delimiter = _delimiters[collectionFormat] ?? ',';

  final String joinedParameters =
      values.map((v) => _parameterToString(v)).join(delimiter);

  return <QueryParam>[
    QueryParam(name, joinedParameters),
  ];
}

/// Format the given parameter object into string.
String _parameterToString(dynamic value) {
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }

  return value.toString();
}
