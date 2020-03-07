///
//  Generated code. Do not modify.
//  source: hello.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class HelloResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HelloResponse', package: const $pb.PackageName('proto'), createEmptyInstance: create)
    ..aOS(1, 'response')
    ..hasRequiredFields = false
  ;

  HelloResponse._() : super();
  factory HelloResponse() => create();
  factory HelloResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HelloResponse clone() => HelloResponse()..mergeFromMessage(this);
  HelloResponse copyWith(void Function(HelloResponse) updates) => super.copyWith((message) => updates(message as HelloResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HelloResponse create() => HelloResponse._();
  HelloResponse createEmptyInstance() => create();
  static $pb.PbList<HelloResponse> createRepeated() => $pb.PbList<HelloResponse>();
  @$core.pragma('dart2js:noInline')
  static HelloResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloResponse>(create);
  static HelloResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
}

