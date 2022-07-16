import 'package:json_annotation/json_annotation.dart';

part 'add_menu_request.g.dart';

@JsonSerializable()
class AddMenuRequest {
  @JsonKey(name: "nama_menu")
  String namaMenu;
  @JsonKey(name: "nama_kategori")
  String namaKategori;
  String harga;
  String gambar;

  AddMenuRequest({
    required this.namaMenu,
    required this.namaKategori,
    required this.harga,
    required this.gambar,
  });

  Map<String, dynamic> toJson() => _$AddMenuRequestToJson(this);

  static AddMenuRequest fromJson(Map<String, dynamic> json) =>
      _$AddMenuRequestFromJson(json);
}
