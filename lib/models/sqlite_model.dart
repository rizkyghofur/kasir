import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';
import 'package:http/http.dart' as http;

part 'sqlite_model.g.dart';

const tabelMenu = SqfEntityTable(
    tableName: 'menu',
    primaryKeyName: 'id',
    primaryKeyType: PrimaryKeyType.integer_auto_incremental,
    fields: [
      SqfEntityField('namaMenu', DbType.text),
      SqfEntityField('namaKategori', DbType.text),
      SqfEntityField('hargaMenu', DbType.text),
      SqfEntityField('gambarMenu', DbType.text)
    ]);

const tabelKeranjang = SqfEntityTable(
    tableName: 'keranjang',
    primaryKeyName: 'id',
    primaryKeyType: PrimaryKeyType.integer_auto_incremental,
    fields: [
      SqfEntityField('namaMenu', DbType.text),
      SqfEntityField('namaKategori', DbType.text),
      SqfEntityField('hargaMenu', DbType.text),
      SqfEntityField('gambarMenu', DbType.text),
      SqfEntityField('jumlahItem', DbType.text),
    ]);

const seqIdentity = SqfEntitySequence(
  sequenceName: 'identity',
);

@SqfEntityBuilder(dbModel)
const dbModel = SqfEntityModel(
    modelName: 'DBModel',
    dbVersion: 1,
    databaseName: 'db.db',
    databaseTables: [
      tabelMenu,
      tabelKeranjang,
    ],
    sequences: [seqIdentity],
    bundledDatabasePath: null);
