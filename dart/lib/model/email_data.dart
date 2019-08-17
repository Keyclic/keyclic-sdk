part of keyclic_sdk_api.api;

class EmailData {
  EmailData({
    this.email,
  });

  EmailData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    email = json['email'];
  }

  String email;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is EmailData &&
        runtimeType == other.runtimeType &&
        email == other.email;
  }

  @override
  int get hashCode => 0 ^ email.hashCode;

  static List<EmailData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<EmailData>()
        : json.map((value) => EmailData.fromJson(value)).toList();
  }

  static Map<String, EmailData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = EmailData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
    };
  }

  @override
  String toString() {
    return 'EmailData[email=$email, ]';
  }
}
