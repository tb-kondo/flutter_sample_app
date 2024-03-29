import 'package:flutter_sample_app/models/response_data/base_response_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_auth_response.freezed.dart';
part 'get_auth_response.g.dart';

@freezed
class GetAuthResponse with _$GetAuthResponse {
  factory GetAuthResponse({
    @Default(true) bool success,
    @Default('') String message,
    required String accessToken,
  }) = _GetAuthResponse;

  factory GetAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAuthResponseFromJson(json);

  factory GetAuthResponse.fromBaseResponseData(
    BaseResponseData responseData,
  ) =>
      GetAuthResponse.fromJson(
        <String, dynamic>{
          'success': responseData.success,
          'message': responseData.message,
          'data': responseData.data,
        },
      );
}
