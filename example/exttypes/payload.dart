extension type Payload._(List _payload) implements Object {
  factory Payload(String id, String name, {bool? success}) {
    return Payload._([id, name, success, DateTime.now(), <PayloadItem>[]]);
  }

  String get id => _payload[0] as String;

  String get name => _payload[1] as String;

  bool get success => _payload[2] as bool? ?? false;
  set success(bool value) => _payload[2] = value;

  DateTime get created => _payload[3] as DateTime;

  List<PayloadItem> get items => _payload[4] as List<PayloadItem>;

  DateTime? get modified {
    DateTime? last;
    for (var i in items) {
      if (last == null || last.isBefore(i.modified)) {
        last = i.modified;
      }
    }
    return last ?? created;
  }

  Map<String, dynamic> get props => {
    'id': id,
    'name': name,
    'success': success,
    'created': created,
    'modified': modified,
    'items.length': items.length,
  };
}

extension type PayloadItem._(List _payload) {
  factory PayloadItem(String name, String value, {DateTime? modified}) {
    return PayloadItem._([name, value, modified ?? DateTime.now()]);
  }

  String get name => _payload[0] as String;

  String get value => _payload[1] as String;
  set value(String value) {
    _payload[1] = value;
    _payload[2] = DateTime.now();
  }

  DateTime get modified => _payload[2] as DateTime;

  Map<String, dynamic> get props => {
    'name': name,
    'value': value,
    'modified': modified,
  };
}
