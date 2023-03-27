import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'superheros.freezed.dart';
part 'superheros.g.dart';

@freezed
class Superheros with _$Superheros {
  factory Superheros({
    String? name,
    String? power,
    String? url,
  }) = _Superheros;

  factory Superheros.fromJson(Map<String, dynamic> json) =>
      _$SuperherosFromJson(json);
}
