// import 'package:json_annotation/json_annotation.dart';
//
// part 'GetMenuResponse.g.dart';
//
// @JsonSerializable()
// class GetMenuResponse {
//   @JsonKey(name: "id_menu")
//   String idMenu;
//   @JsonKey(name: "nama_menu")
//   String namaMenu;
//   @JsonKey(name: "nama_kategori")
//   String namaKategori;
//   String harga;
//   String gambar;
//
//   GetMenuResponse({
//     required this.idMenu,
//     required this.namaMenu,
//     required this.namaKategori,
//     required this.harga,
//     required this.gambar,
//   });
//
//   Map<String, dynamic> toJson() => _$GetMenuResponseToJson(this);
//
//   static GetMenuResponse fromJson(Map<String, dynamic> json) =>
//       _$GetMenuResponseFromJson(json);
// }