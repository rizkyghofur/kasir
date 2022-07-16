part of 'add_menu_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddMenuResponse _$AddMenuResponseFromJson(Map<String, dynamic> json) {
  return AddMenuResponse(
    success: json['success'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$AddMenuResponseToJson(AddMenuResponse instance) =>
    <String, dynamic>{'success': instance.success, 'message': instance.message};
