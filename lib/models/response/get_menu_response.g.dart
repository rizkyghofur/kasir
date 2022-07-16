part of 'get_menu_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMenuResponse _$GetMenuResponseFromJson(Map<String, dynamic> json) {
  return GetMenuResponse(
    namaMenu: json['nama_menu'] as String,
    namaKategori: json['nama_kategori'] as String,
    harga: json['harga'] as String,
    gambar: json['gambar'] as String,
  );
}

Map<String, dynamic> _$GetMenuResponseToJson(GetMenuResponse instance) =>
    <String, dynamic>{
      'nama_menu': instance.namaMenu,
      'nama_kategori': instance.namaKategori,
      'harga': instance.harga,
      'gambar': instance.gambar
    };
