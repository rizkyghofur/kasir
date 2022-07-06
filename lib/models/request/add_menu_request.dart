// import 'package:json_annotation/json_annotation.dart';
//
// part 'AddMenuRequest.g.dart';
//
// @JsonSerializable()
// class AddMenuRequest {
//   @JsonKey(name: "id_menu")
//   String idMenu;
//   @JsonKey(name: "nama_menu")
//   String namaMenu;
//   @JsonKey(name: "nama_kategori")
//   String namaKategori;
//   String harga;
//   String gambar;
//
//   AddMenuRequest({
//     required this.idMenu,
//     required this.namaMenu,
//     required this.namaKategori,
//     required this.harga,
//     required this.gambar,
//   });
//
//   Map<String, dynamic> toJson() => _$AddMenuRequestToJson(this);
//
//   static AddMenuRequest fromJson(Map<String, dynamic> json) =>
//       _$AddMenuRequestFromJson(json);
// }