part of keyclic_sdk_api.api;

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};

// port from Java version
Iterable<QueryParam> _convertParametersForCollectionFormat(
  String name,
  dynamic value, {
  String collectionFormat = 'csv',
}) {
  var params = <QueryParam>[];

  // preconditions
  if (name == null || name.isEmpty || value == null) {
    return params;
  }

  if (value is! List) {
    params.add(QueryParam(name, _parameterToString(value)));

    return params;
  }

  List values = value as List;

  if (collectionFormat == 'multi') {
    return values.map((v) => QueryParam(name, _parameterToString(v)));
  }

  // get the delimiter (default: csv delimiter)
  final String delimiter =
      collectionFormat.isNotEmpty ? _delimiters[collectionFormat] : ',';

  params.add(QueryParam(
      name, values.map((v) => _parameterToString(v)).join(delimiter)));

  return params;
}

/// Format the given parameter object into string.
String _parameterToString(dynamic value) {
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }

  return value.toString();
}
