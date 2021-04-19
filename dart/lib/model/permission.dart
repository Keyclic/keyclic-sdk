part of keyclic_sdk_api.api;

class Permission {
  Permission.fromJson(dynamic data) {
    switch (data) {
      case "FILTER:ALL":
        value = data;
        break;

      case "ORGANIZATION:AGENT":
        value = data;
        break;

      case "ORGANIZATION:MEMBER":
        value = data;
        break;

      case "ORGANIZATION:OPERATOR":
        value = data;
        break;

      case "ALL":
        value = data;
        break;

      case "ANALYTICS:ALL":
        value = data;
        break;

      case "CATEGORY:ALL":
        value = data;
        break;

      case "EXPORT:ALL":
        value = data;
        break;

      case "MEMBER_COLLABORATOR:ALL":
        value = data;
        break;

      case "MEMBER_CONTACT:ALL":
        value = data;
        break;

      case "OCCUPANT:ALL":
        value = data;
        break;

      case "OPERATION:ALL":
        value = data;
        break;

      case "ORGANIZATION:ALL":
        value = data;
        break;

      case "PLACE:ALL":
        value = data;
        break;

      case "PUBLICATION:ALL":
        value = data;
        break;

      case "REPORT:ALL":
        value = data;
        break;

      case "SERVICE:ALL":
        value = data;
        break;

      case "WEBHOOK:ALL":
        value = data;
        break;

      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  Permission._internal(this.value);

  /// The underlying value of this enum member.
  String value;

  static Permission fILTERALL_ = Permission._internal("FILTER:ALL");

  static Permission oRGANIZATIONAGENT_ =
      Permission._internal("ORGANIZATION:AGENT");

  static Permission oRGANIZATIONMEMBER_ =
      Permission._internal("ORGANIZATION:MEMBER");

  static Permission oRGANIZATIONOPERATOR_ =
      Permission._internal("ORGANIZATION:OPERATOR");

  static Permission aLL_ = Permission._internal("ALL");

  static Permission aNALYTICSALL_ = Permission._internal("ANALYTICS:ALL");

  static Permission cATEGORYALL_ = Permission._internal("CATEGORY:ALL");

  static Permission eXPORTALL_ = Permission._internal("EXPORT:ALL");

  static Permission mEMBERCOLLABORATORALL_ =
      Permission._internal("MEMBER_COLLABORATOR:ALL");

  static Permission mEMBERCONTACTALL_ =
      Permission._internal("MEMBER_CONTACT:ALL");

  static Permission oCCUPANTALL_ = Permission._internal("OCCUPANT:ALL");

  static Permission oPERATIONALL_ = Permission._internal("OPERATION:ALL");

  static Permission oRGANIZATIONALL_ = Permission._internal("ORGANIZATION:ALL");

  static Permission pLACEALL_ = Permission._internal("PLACE:ALL");

  static Permission pUBLICATIONALL_ = Permission._internal("PUBLICATION:ALL");

  static Permission rEPORTALL_ = Permission._internal("REPORT:ALL");

  static Permission sERVICEALL_ = Permission._internal("SERVICE:ALL");

  static Permission wEBHOOKALL_ = Permission._internal("WEBHOOK:ALL");

  static dynamic encode(Permission data) {
    return data.value;
  }
}
