// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:sqfentity/sqfentity.dart';
// import 'package:sqfentity_gen/sqfentity_gen.dart';
//
// part 'sqlite_model.g.dart';
//
// const tabelMenu = SqfEntityTable(tableName: 'menu', fields: [
//   SqfEntityField('id', DbType.integer, isPrimaryKeyField: true),
//   SqfEntityField('namaMenu', DbType.text),
//   SqfEntityField('namaKategori', DbType.text),
//   SqfEntityField('hargaMenu', DbType.text),
//   SqfEntityField('gambarMenu', DbType.text)
// ]);
//
// const tabelKeranjang = SqfEntityTable(tableName: 'keranjang', fields: [
//   SqfEntityField('id', DbType.integer, isPrimaryKeyField: true),
//   SqfEntityField('namaMenu', DbType.text),
//   SqfEntityField('namaKategori', DbType.text),
//   SqfEntityField('hargaMenu', DbType.text),
//   SqfEntityField('gambarMenu', DbType.text),
//   SqfEntityField('jumlahItem', DbType.text),
// ]);
//
// const seqIdentity = SqfEntitySequence(
//   sequenceName: 'identity',
// );
//
// @SqfEntityBuilder(dbModel)
// const dbModel = SqfEntityModel(
//     modelName: 'DBModel',
//     dbVersion: 1,
//     databaseName: 'db.db',
//     databaseTables: [
//       tabelMenu,
//       tabelKeranjang,
//     ],
//     sequences: [seqIdentity],
//     bundledDatabasePath: null);
