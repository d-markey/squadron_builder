// ignore_for_file: unused_field

import 'package:squadron/squadron.dart';

class BigIntMarshaler implements GenericMarshaler<BigInt> {
  // "const" so it can be used to annotate parameters and return values
  const BigIntMarshaler();

  @override
  dynamic marshal(BigInt data) => data.toString();

  @override
  BigInt unmarshal(dynamic data) => BigInt.parse(data);
}
