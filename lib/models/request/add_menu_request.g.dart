part of 'add_menu_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddMenuRequest _$AddMenuRequestFromJson(Map<String, dynamic> json) {
  return AddMenuRequest(
    namaMenu: json['nama_menu'] as String,
    namaKategori: json['nama_kategori'] as String,
    harga: json['harga'] as String,
    gambar: json['gambar'] as String,
  );
}

Map<String, dynamic> _$AddMenuRequestToJson(AddMenuRequest instance) =>
    <String, dynamic>{
      'nama_menu': instance.namaMenu,
      'nama_kategori': instance.namaKategori,
      'harga': instance.harga,
      'gambar': instance.gambar
    };
