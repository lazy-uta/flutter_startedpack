import 'dart:io';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'package:startedpack/commons/constant_data.dart';

class HiveController extends GetxController {
  Box _mainBox;

  @override
  Future<void> onInit() async {
    super.onInit();
    final Directory _directory = await getApplicationDocumentsDirectory();
    Hive.init(_directory.path);
    _mainBox = await Hive.openBox(ConstantData.mainBox);
  }

  void onClearData() {
    _mainBox.delete(ConstantData.cifKey);
    _mainBox.delete(ConstantData.tokenKey);
    _mainBox.delete(ConstantData.kodeDesaKey);
    _mainBox.delete(ConstantData.noHpKey);
    _mainBox.delete(ConstantData.nasabahNameKey);
    _mainBox.delete(ConstantData.pinKey);
    _mainBox.delete(ConstantData.noRekKey);
    _mainBox.delete(ConstantData.urlGambarKey);
    _mainBox.delete(ConstantData.urlBeritaKey);
    _mainBox.delete(ConstantData.isEnoughBalanceKey);
    _mainBox.delete(ConstantData.rekeningNumberKey);
    setIsLoggedIn(false);
  }

  void setIsLoggedIn(bool isLoggedIn) {
    _mainBox.put(ConstantData.isLoggedIn, isLoggedIn);
  }

  bool getIsLoggedIn() => _mainBox.get(ConstantData.isLoggedIn) as bool;

  void setCif(String cif) {
    _mainBox.put(ConstantData.cifKey, cif);
  }

  String getCif() => _mainBox.get(ConstantData.cifKey).toString();

  void setToken(String token) {
    _mainBox.put(ConstantData.tokenKey, token);
  }

  String getToken() => _mainBox.get(ConstantData.tokenKey).toString();

  void setKodeDesa(String kodeDesa) {
    _mainBox.put(ConstantData.kodeDesaKey, kodeDesa);
  }

  String getKodeDesa() => _mainBox.get(ConstantData.kodeDesaKey).toString();

  void setNoHp(String noHp) {
    _mainBox.put(ConstantData.noHpKey, noHp);
  }

  String getNoHp() => _mainBox.get(ConstantData.noHpKey).toString();

  void setNameNasabah(String name) {
    _mainBox.put(ConstantData.nasabahNameKey, name);
  }

  String getNameNasabah() =>
      _mainBox.get(ConstantData.nasabahNameKey).toString();

  void setPin(String pin) {
    _mainBox.put(ConstantData.pinKey, pin);
  }

  String getPin() => _mainBox.get(ConstantData.pinKey).toString();

  void setNoRek(String noRek) {
    _mainBox.put(ConstantData.noRekKey, noRek);
  }

  String getNoRek() => _mainBox.get(ConstantData.noRekKey).toString();

  void setUrlGambar(String urlGambar) {
    _mainBox.put(ConstantData.urlGambarKey, urlGambar);
  }

  String getUrlGambar() => _mainBox.get(ConstantData.urlGambarKey).toString();

  void setUrlBerita(String urlBerita) {
    _mainBox.put(ConstantData.urlBeritaKey, urlBerita);
  }

  String getUrlBerita() => _mainBox.get(ConstantData.urlBeritaKey).toString();

  void setIsEnoughBalance(bool isEnoughBalance) {
    _mainBox.put(ConstantData.isEnoughBalanceKey, isEnoughBalance);
  }

  bool getIsEnoughBalance() =>
      _mainBox.get(ConstantData.isEnoughBalanceKey) as bool;

  void setRekeningNumber(String rekeningNumber) {
    _mainBox.put(ConstantData.rekeningNumberKey, rekeningNumber);
  }

  String getRekeningNumber() =>
      _mainBox.get(ConstantData.rekeningNumberKey).toString();
}
