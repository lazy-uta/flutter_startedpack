import 'dart:convert';

import 'package:meta/meta.dart';

MainJwtParseModel mainJwtParseModelFromJson(String str) =>
    MainJwtParseModel.fromJson(json.decode(str) as Map<String, dynamic>);

String mainJwtParseModelToJson(MainJwtParseModel data) =>
    json.encode(data.toJson());

class MainJwtParseModel {
  MainJwtParseModel({
    @required this.pin,
    @required this.nasabah,
    @required this.exp,
  });
  factory MainJwtParseModel.fromJson(Map<String, dynamic> json) =>
      MainJwtParseModel(
        pin: json['pin'].toString(),
        nasabah: Nasabah.fromJson(json['nasabah'] as Map<String, dynamic>),
        exp: int.parse(json['exp'].toString()),
      );

  final String pin;
  final Nasabah nasabah;
  final int exp;

  Map<String, dynamic> toJson() => {
        'pin': pin,
        'nasabah': nasabah.toJson(),
        'exp': exp,
      };
}

class Nasabah {
  Nasabah({
    @required this.id,
    @required this.tanggal,
    @required this.phone,
    @required this.otp,
    @required this.status,
    @required this.nama,
    @required this.cif,
    @required this.rekening,
    @required this.pass,
    @required this.fcm,
    @required this.toko,
    @required this.otptoko,
    @required this.email,
    @required this.wa,
    @required this.imei,
    @required this.stlogin,
    @required this.idphone,
    @required this.kodedesa,
    @required this.nik,
  });
  factory Nasabah.fromJson(Map<String, dynamic> json) => Nasabah(
        id: int.parse(json['id'].toString()),
        tanggal: DateTime.parse(json['tanggal'].toString()),
        phone: json['phone'].toString(),
        otp: json['otp'].toString(),
        status: json['status'].toString(),
        nama: json['nama'].toString(),
        cif: json['cif'].toString(),
        rekening: json['rekening'].toString(),
        pass: json['pass'].toString(),
        fcm: json['fcm'].toString(),
        toko: json['toko'].toString(),
        otptoko: json['otptoko'].toString(),
        email: json['email'].toString(),
        wa: json['wa'].toString(),
        imei: json['imei'].toString(),
        stlogin: json['stlogin'].toString(),
        idphone: json['idphone'].toString(),
        kodedesa: json['kodedesa'].toString(),
        nik: json['nik'].toString(),
      );

  final int id;
  final DateTime tanggal;
  final String phone;
  final String otp;
  final String status;
  final String nama;
  final String cif;
  final String rekening;
  final String pass;
  final String fcm;
  final String toko;
  final String otptoko;
  final String email;
  final String wa;
  final String imei;
  final String stlogin;
  final String idphone;
  final String kodedesa;
  final String nik;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tanggal': tanggal.toIso8601String(),
        'phone': phone,
        'otp': otp,
        'status': status,
        'nama': nama,
        'cif': cif,
        'rekening': rekening,
        'pass': pass,
        'fcm': fcm,
        'toko': toko,
        'otptoko': otptoko,
        'email': email,
        'wa': wa,
        'imei': imei,
        'stlogin': stlogin,
        'idphone': idphone,
        'kodedesa': kodedesa,
        'nik': nik,
      };
}
