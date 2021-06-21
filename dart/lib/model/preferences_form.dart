// @dart=2.10
part of keyclic_sdk_api.api;

class PreferencesForm {
  PreferencesForm({
    this.required,
  });

  factory PreferencesForm.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PreferencesForm(
      required:
          json['required'] is List ? List<String>.from(json['required']) : null,
    );
  }

  List<String> required;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesForm &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(required, other.required);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (required is List && required.isNotEmpty) {
      hashCode ^= required
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<PreferencesForm> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PreferencesForm.fromJson(value))
            ?.toList() ??
        <PreferencesForm>[];
  }

  static Map<String, PreferencesForm> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PreferencesForm>((String key, dynamic value) {
          return MapEntry(key, PreferencesForm.fromJson(value));
        }) ??
        <String, PreferencesForm>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (required != null) 'required': required,
    };
  }

  @override
  String toString() {
    return 'PreferencesForm[required=$required, ]';
  }
}
