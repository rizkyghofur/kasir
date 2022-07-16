import 'package:json_annotation/json_annotation.dart';

part 'get_menu_response.g.dart';

@JsonSerializable()
class GetMenuResponse {
  @JsonKey(name: "nama_menu")
  String namaMenu;
  @JsonKey(name: "nama_kategori")
  String namaKategori;
  String harga;
  String gambar;

  GetMenuResponse({
    required this.namaMenu,
    required this.namaKategori,
    required this.harga,
    required this.gambar,
  });

  Map<String, dynamic> toJson() => _$GetMenuResponseToJson(this);

  static GetMenuResponse fromJson(Map<String, dynamic> json) =>
      _$GetMenuResponseFromJson(json);
}
