// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:kasir/constants/constants.dart';
// import 'package:kasir/utils/locator.dart';
//
// class MenuRepositori {
//   final Dio dio = locator<Dio>();
//
//   Future<List<GetMenuResponse>> getMenu() async {
//     try {
//       Response response = await dio.get(Constants.urlGetMenu);
//
//       List<GetMenuResponse> fetchedResponse =
//       (jsonDecode(response.data) as List)
//           .map((data) => GetMenuResponse.fromJson(data))
//           .toList();
//       return fetchedResponse;
//     } catch (error, stacktrace) {
//       throw Exception("Exception occured: $error stackTrace: $stacktrace");
//     }
//   }

//   Future<AddMenuResponse> addMenu(String namaMenu, String namaKategori, int harga, String gambar) async {
//        AddMenuRequest request = AddMenuRequest();
//        request.namaMenu = namaMenu;
//        request.namaKategori = namaKategori;
//        request.harga = harga;
//        request.gambarMenu = gambar;
//
//        dio.options.contentType = "application/x-www-form-urlencoded";
//        Response response =
//            await dio.post(Constants.urlAddMenu, data: request.toJson());
//        var map = Map<String, dynamic>.from(jsonDecode(response.data));
//        var fetchedResponse = AddMenuResponse.fromJson(map);
//
//        return fetchedResponse;
//     } catch (error, stacktrace) {
//       throw Exception("Exception occured: $error stackTrace: $stacktrace");
//     }
//   }
// }