part of keyclic_sdk_api.api;

class SignerEmbedded {
  SignerEmbedded({
    this.member,
  });

  factory SignerEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerEmbedded(
      member: Member.fromJson(json['member']),
    );
  }

  Member member;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerEmbedded &&
        runtimeType == other.runtimeType &&
        member == other.member;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignerEmbedded.fromJson(value))
            ?.toList() ??
        <SignerEmbedded>[];
  }

  static Map<String, SignerEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, SignerEmbedded>((String key, dynamic value) {
          return MapEntry(key, SignerEmbedded.fromJson(value));
        }) ??
        <String, SignerEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member.toJson(),
    };
  }

  @override
  String toString() {
    return 'SignerEmbedded[member=$member, ]';
  }
}
