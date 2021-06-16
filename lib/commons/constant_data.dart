class ConstantData {
  static const String projectTitle = 'Prima Village';
  static const String somethingWentWrong =
      'Maaf, terjadi kesalahan,...\nSilahkan coba beberapa saat lagi!!';

  /// main hive key
  static const String mainBox = 'mainBox';
  static const String isLoggedIn = 'isLoggedIn';
  static const String kodeDesaKey = 'kodeDesaKey';
  static const String cifKey = 'cifKey';
  static const String tokenKey = 'tokenKey';
  static const String imeiKey = 'imeiKey';
  static const String noHpKey = 'noHpKey';
  static const String nasabahNameKey = 'nasabahNameKey';
  static const String pinKey = 'pinKey';
  static const String noRekKey = 'noRekKey';
  static const String urlGambarKey = 'urlGambarKey';
  static const String urlBeritaKey = 'urlBeritaKey';
  static const String rekeningNumberKey = 'rekeningNumberKey';
  static const String isEnoughBalanceKey = 'isEnoughBalanceKey';

  /// dagang hive key
  /// uang hive key
  /// ppob hive key
  /// pasar hive key
  /// surat hive key
  static const String suratBox = 'suratBox';
  static const String nameKey = 'namaKey';
  static const String phoneNumberKey = 'hpKey';
  static const String typeKey = 'jenisKey';
  static const String isAlreadyLoggedInKey = 'isAlreadyLoggedInKey';

  /// antri hive key
  static const String antriBox = 'antriBox';
  static const String antriPoli = 'antriPoli';
  static const String antriNama = 'antriNama';
  static const String antriTgl = 'antriTgl';
  static const String antriNoRef = 'antriNoRef';

  /// adu hive key
  /// catat hive key

  /// main api url
  static const String registerUrl = 'register';
  static const String cekNoHpUrl = 'register/ceknohp';
  static const String getSkUrl = 'register/getsk';
  static const String verifikasiUrl = 'register/otp';
  static const String kirimUlangOtpUrl = 'register/kirimulangotp';
  static const String cekPinUrl = 'cekpin/';
  static const String setPinUrl = 'register/setpin';
  static const String loginUrl = 'login';
  static const String cekPhoneUrl = 'cekphone.php';
  static const String getHomeUrl = 'gethome/';
  static const String getBeritaUrl = 'getberita/';
  static const String qrCodeScanUrl = 'keuangan/scanqrcode';

  // pesan api url
  static const String loginPesanUrl = 'chat/login';
  static const String pesanGetUserUrl = 'chat/get-users';
  static const String pesanGetRoomUrl = 'chat/get-rooms';
  static const String pesanGetDmUrl = 'chat/get-direct-message?username=';
  static const String pesanCreateDmUrl = 'chat/create-direct-message';
  static const String pesanSendDirectMessage = 'chat/send-message';

  /// dagang api url
  static const String dagangGetToko = 'dagang/gettoko';
  static const String dagangGetProdukToko = 'dagang/getproduktoko';
  static const String dagangAddKeranjang = 'dagang/addkeranjang';
  static const String dagangGetAllKeranjang = 'dagang/getall/';
  static const String dagangEditKeranjang = 'dagang/updatekeranjang/';

  /// uang api url
  static const String getTabungan = 'keuangan/gettabungan';
  static const String getMenuKeuangan = 'menukeuangan';
  static const String cekSaldoTabunganUrl = 'keuangan/ceksaldo/tabungan';
  static const String cekSaldoKreditUrl = 'keuangan/ceksaldo/kredit';
  static const String mutasiUrl = 'keuangan/mutasi';
  static const String detailMutasiUrl = 'keuangan/detailmutasi';
  static const String addNorekBumdesUrl = 'keuangan/norektujuanbumdes';
  static const String addNorekBankUrl = 'keuangan/norektujuanbank';
  static const String getKycUrl = '/kyc';
  static const String getTransferMenuUrl = '/menutf';
  static const String getMasterBankUrl = 'keuangan/getmasterbank';
  static const String getNorekBumdesUrl = 'keuangan/getnorektujuanbumdes';
  static const String getNorekBankUrl = 'keuangan/getnorektujuanbank';
  static const String transferCekUrl = 'keuangan/transfer/cek';
  static const String transferBumdesUrl = 'keuangan/transfer/transfer';
  static const String transferBankUrl = 'keuangan/transfer/transferbank';
  static const String ubahPinUrl = 'keuangan/ubahpin';
  static const String requestMoneyUrl = 'keuangan/topup';
  static const String statusRequestMoneyUrl = 'keuangan/statustopup';
  static const String cekSaldoUrl = 'keuangan/getsaldo';

  /// ppob api url
  static const String getPpobServiceMenuUrl = 'menuppob';
  static const String getDenomUrl = 'ppob/pembelian/pulsa/getdenom/';
  static const String getJenisPulsaUrl = 'ppob/pembelian/pulsa/getjenis/';
  static const String getDenomPulsaUrl = 'ppob/pembelian/pulsa/getdenompulsa/';
  static const String getDenomDataUrl = 'ppob/pembelian/pulsa/getdenomdata/';
  static const String getReviewPulsaUrl =
      'ppob/pembelian/pulsa/getreviewpulsa/';
  static const String simpanBeliPulsaUrl =
      'ppob/pembelian/pulsa/simpanbelipulsa';
  static const String cekPascaUrl = 'ppob/pembayaran/pasca/cekpasca';
  static const String getReviewPascaUrl =
      'ppob/pembayaran/pasca/getreviewpasca';
  static const String simpanBayarPascaUrl =
      'ppob/pembayaran/pasca/simpanbayarpasca';
  static const String getPlnProdukUrl = 'ppob/pembayaran/pln/getpln';
  static const String getTokenPlnDenomUrl =
      'ppob/pembelian/token/gettokendenom';
  static const String cekTokenPlnUrl = 'ppob/pembelian/token/cektoken';
  static const String getReviewTokenPlnUrl =
      'ppob/pembelian/token/getreviewtoken';
  static const String simpanBeliTokenPlnUrl =
      'ppob/pembelian/token/simpanbelitoken';
  static const String cekPlnUrl = 'ppob/pembayaran/pln/cekpln';
  static const String getReviewPlnUrl = 'ppob/pembayaran/pln/getreviewpln';
  static const String simpanBayarPlnUrl = 'ppob/pembayaran/pln/simpanbayarpln';
  static const String getTelkomProdukUrl =
      'ppob/pembayaran/telkom/gettelkomproduk';
  static const String cekTelkomUrl = 'ppob/pembayaran/telkom/cektelkom';
  static const String getReviewTelkomUrl =
      'ppob/pembayaran/telkom/getreviewtelkom';
  static const String simpanBayarTelkomUrl =
      'ppob/pembayaran/telkom/simpanbayartelkom';
  static const String getAsuransiProdukUrl =
      'ppob/pembayaran/asuransi/getasuransiproduk';
  static const String cekAsuransiUrl = 'ppob/pembayaran/asuransi/cekasuransi';
  static const String getReviewAsuransiUrl =
      'ppob/pembayaran/asuransi/getreviewasuransi';
  static const String simpanBayarAsuransiUrl =
      'ppob/pembayaran/asuransi/simpanbayarasuransi';
  static const String getPdamProdukUrl = 'ppob/pembayaran/pdam/getpdamproduk';
  static const String cekPdamUrl = 'ppob/pembayaran/pdam/cekpdam';
  static const String getReviewPdamUrl = 'ppob/pembayaran/pdam/getreviewpdam';
  static const String simpanBayarPdamUrl =
      'ppob/pembayaran/pdam/simpanbayarpdam';
  static const String cekPgnUrl = 'ppob/pembayaran/pgn/cekpgn';
  static const String getReviewPgnUrl = 'ppob/pembayaran/pgn/getreviewpgn';
  static const String simpanBayarPgnUrl = 'ppob/pembayaran/pgn/simpanbayarpgn';
  static const String getFinanceProdukUrl =
      'ppob/pembayaran/finance/getfinanceproduk';
  static const String cekFinanceUrl = 'ppob/pembayaran/finance/cekfinance';
  static const String getReviewFinanceUrl =
      'ppob/pembayaran/finance/getreviewfinance';
  static const String simpanBayarFinanceUrl =
      'ppob/pembayaran/finance/simpanbayarfinance';
  static const String getTvProdukUrl = 'ppob/pembayaran/tv/gettvproduk';
  static const String cekTvUrl = 'ppob/pembayaran/tv/cektv';
  static const String getReviewTvUrl = 'ppob/pembayaran/tv/getreviewtv';
  static const String simpanBayarTvUrl = 'ppob/pembayaran/tv/simpanbayartv';
  static const String getWalletProdukUrl =
      'ppob/pembelian/wallet/getwalletproduk';
  static const String getWalletDenomUrl = 'ppob/pembelian/wallet/getwallet';
  static const String getReviewWalletUrl =
      'ppob/pembelian/wallet/getreviewwallet';
  static const String simpanBeliWalletUrl =
      'ppob/pembelian/wallet/simpanbeliwallet';
  static const String getTolProdukUrl = 'ppob/pembelian/tol/gettolproduk';
  static const String getTolDenomUrl = 'ppob/pembelian/tol/gettoldenom';
  static const String getReviewTolUrl = 'ppob/pembelian/tol/getreviewtol';
  static const String simpanBeliTolUrl = 'ppob/pembelian/tol/simpanbelitol';
  static const String getPendidikanProdukUrl =
      'ppob/pembayaran/pendidikan/getpendidikanproduk';
  static const String getPendidikanJenisUrl =
      'ppob/pembayaran/pendidikan/getjenispembayaran';
  static const String cekPendidikanUrl =
      'ppob/pembayaran/pendidikan/cekpendidikan';
  static const String getReviewPendidikanUrl =
      'ppob/pembayaran/pendidikan/getreviewpendidikan';
  static const String simpanBayarPendidikanUrl =
      'ppob/pembayaran/pendidikan/simpanbayarpendidikan';
  static const String getRuteKaiUrl = 'ppob/pembelian/kai/rutekai';
  static const String kaiJadwalUrl = 'ppob/pembelian/kai/kaijadwal';
  static const String statusKaiJadwalUrl = 'ppob/pembelian/kai/statuskaijadwal';
  static const String kaiBookUrl = 'ppob/pembelian/kai/kaibook';
  static const String statusKaiBookUrl = 'ppob/pembelian/kai/statuskaibook';
  static const String kaiIssuedUrl = 'ppob/pembelian/kai/kaiissued';
  static const String statusKaiIssuedUrl = 'ppob/pembelian/kai/statuskaiissued';
  static const String riwayatTrxUrl = 'ppob/getriwayattrx/';
  static const String statusCekUrl = 'ppob/statuscek';
  static const String statusTrxUrl = 'ppob/statustrx';
  static const String strukTrxUrl = 'ppob/struktrx';

  static const String uangPpobServiceMenuId = '/uangPpobServiceMenuId';

  /// pasar api url
  static const String pasarGetAllProdukUrl = 'marketplace/product/all';
  static const String pasarGetDetailProdukUrl = 'marketplace/product/detail/';

  /// surat api url
  static const String suratMenuUrl = 'menusurat';
  static const String suratUrl = 'surat/surat/';
  static const String suratSyaratUrl = 'surat/suratsyarat/';
  static const String getPemohonUrl = 'surat/getpemohon/';
  static const String suratReqSduUrl = 'surat/suratreqsdu';
  static const String suratReqSkckUrl = 'surat/suratreqskck';
  static const String suratReqNpwpUrl = 'surat/suratreqnpwp';
  static const String suratReqKtpUrl = 'surat/suratreqktp';
  static const String suratReqNasabUrl = 'surat/suratreqnasab';
  static const String suratReqHilangUrl = 'surat/suratreqhilang';
  static const String suratReqBayiUrl = 'surat/suratreqdukun';
  static const String suratReqJandaUrl = 'surat/suratreqjanda';
  static const String suratReqMatiUrl = 'surat/suratreqkematian';
  static const String suratReqNikahPindahUrl = 'surat/suratreqpindahnikah';
  static const String suratReqSeniUrl = 'surat/suratreqkesenian';
  static const String suratStatusUrl = 'surat/statussurat/';
  static const String suratStatusDetailUrl = 'surat/statussuratdetail/';

  /// antri api url
  static const String antriGetMenu = 'menuantrian';
  static const String antriGetPoli = 'antrian/getpoli';
  static const String antriPostAntrian = 'antrian/antrian';
  static const String antriGetHistory = 'antrian/gethistory/';

  /// adu api url
  static const String getMenuAdu = 'menupengaduan';
  static const String aduGetHistory = 'pengaduan/';
  static const String aduPostAduan = 'pengaduan/pengaduan';

  /// catat api url
  static const String catatPostData = 'catat/catat';
  static const String catatGetHistory = 'catat/history';
  static const String catatGetProvincie = 'catat/get/provinsi';
  static const String catatGetKabupaten = 'catat/get/kabupaten/';
  static const String catatGetKecamatan = 'catat/get/kecamatan/';
  static const String catatGetKelurahan = 'catat/get/kelurahan/';

  /// main routes name
  static const String initialRoute = '/';
  static const String mainBottomNavigationWithFabRoute =
      '/mainBottomNavigationWithFabRoute';
  static const String mainGreeting1Route = '/mainGreeting1Route';
  static const String mainGreeting2Route = '/mainGreeting2Route';
  static const String mainGreeting3Route = '/mainGreeting3Route';
  static const String mainGreeting4Route = '/mainGreeting4Route';
  static const String mainChooseAccountRoute = '/mainChooseAccountRoute';
  static const String mainRegisterRoute = '/mainRegisterRoute';
  static const String mainForgotPinRoute = '/mainForgotPinRoute';
  static const String mainSkRoute = '/mainSkRoute';
  static const String mainVerifikasiRoute = '/mainVerifikasiRoute';
  static const String mainSetPinRoute = '/mainSetPinRoute';
  static const String mainLoginRoute = '/mainLoginRoute';
  static const String mainDetailProfileBackButtonId =
      'uangDetailProfileBackButtonId';
  static const String mainDetailProfileId = '/uangDetailProfileId';
  static const String mainDetailProfileRoute = '/mainDetailProfileRoute';
  static const String mainQrCodeRoute = '/mainQrCodeRoute';
  static const String mainQrCodeScanRoute = '/mainQrCodeScanRoute';

  static const String mainQrCodeScanRouteId = '/mainQrCodeScanRouteId';

  /// dagang routes name
  static const String dagangRoute = '/dagangRoute';

  /// uang routes name
  static const String uangRoute = '/uangRoute';
  static const String uangDetailTabunganRoute = '/uangDetailTabunganRoute';
  static const String uangDetailMutasiRoute = '/uangDetailMutasiRoute';
  static const String uangUploadDataDiriRoute = '/uangUploadDataDiriRoute';
  static const String uangTransferRoute = '/uangTransferRoute';
  static const String uangAddNorekBumdesRoute = '/uangAddNorekBumdesRoute';
  static const String uangAddNorekBankRoute = '/uangAddNorekBankRoute';
  static const String uangGetNorekBumdesRoute = '/uangGetNorekBumdesRoute';
  static const String uangGetNorekBankRoute = '/uangGetNorekBankRoute';
  static const String uangTransferCekRoute = '/uangTransferCekRoute';
  static const String uangDetailTransferRoute = '/uangDetailTransferRoute';
  static const String uangCekPinRoute = '/uangCekPinRoute';
  static const String uangUbahPinRoute = '/uangUbahPinRoute';
  static const String uangRequestMoneyRoute = '/uangRequestMoneyRoute';
  static const String uangQrCodeRoute = '/uangQrCodeRoute';
  static const String uangStrukTansferRoute = '/uangStrukTransferRoute';

  static const String uangBackButtonId = '/uangBackButtonId';
  static const String uangListOfTabunganId = '/uangListOfTabunganId';
  static const String uangDetailTabunganId = '/uangDetailTabunganId';
  static const String uangDateFilterId = '/uangDateFilterId';
  static const String uangSaldoTabunganId = '/uangSaldoTabunganId';
  static const String uangSaldoKreditId = '/uangSaldoKreditId';
  static const String uangMutasiId = '/uangMutasiId';
  static const String uangDetailMutasiBackButtonId =
      'uangDetailMutasiBackButtonId';
  static const String uangDetailMutasiId = '/uangDetailMutasiId';
  static const String uangUbahPinBackButtonId = 'uangUbahPinBackButtonId';
  static const String uangUbahPinId = '/uangUbahPinId';
  static const String uangUploadDataDiriBackButtonId =
      '/uangUploadDataDiriBackButtonId';
  static const String uangUploadDataDiriId = '/uangUploadDataDiriId';
  static const String uangTransferMenuId = '/uangTransferMenuId';
  static const String uangAddNorekBumdesBackButtonId =
      'uangAddNorekBumdesBackButtonId';
  static const String uangAddNorekBumdesId = '/uangAddNorekBumdesId';
  static const String uangAddNorekBankBackButtonId =
      'uangAddNorekBankBackButtonId';
  static const String uangAddNorekBankId = '/uangAddNorekBankId';
  static const String uangGetNorekBumdesBackButtonId =
      'uangGetNorekBumdesBackButtonId';
  static const String uangGetNorekBumdesId = '/uangGetNorekBumdesId';
  static const String uangGetNorekBankBackButtonId =
      'uangGetNorekBankBackButtonId';
  static const String uangGetNorekBankId = '/uangGetNorekBankId';
  static const String uangTransferCekBackButtonId =
      'uangTransferCekBackButtonId';
  static const String uangTransferCekId = '/uangTransferCekId';
  static const String uangDetailTransferId = '/uangDetailTransferId';
  static const String uangSelectSourceRekId = '/uangSelectSourceRekId';
  static const String uangRequestMoneyBackButtonId =
      'uangRequestMoneyBackButtonId';
  static const String uangRequestMoneyId = '/uangRequestMoneyId';
  static const String uangQrCodeId = '/uangQrCodeId';
  static const String uangCekPinId = '/uangCekPinId';

  /// ppob routes name
  static const String ppobRoute = '/ppobRoute';

  /// ppob pulsa routes
  static const String ppobPulsaRoute = '/ppobPulsaRoute';
  static const String ppobBeliPulsaRoute = '/ppobBeliPulsaRoute';
  static const String ppobPembelianRoute = '/ppobPembelianRoute';
  static const String ppobStrukPulsaRoute = '/ppobStrukPulsaRoute';

  /// ppob pulsa id
  static const String ppobPulsaId = '/ppobPulsaId';
  static const String ppobBeliPulsaId = '/ppobBeliPulsaId';

  static const String ppobKaiRoute = '/ppobKaiRoute';
  static const String ppobListOfKaiJadwalRoute = '/ppobListOfKaiJadwalRoute';
  static const String ppobOrderFormKaiRoute = '/ppobOrderFormKaiRoute';
  static const String ppobWalletRoute = '/ppobWalletRoute';
  static const String ppobPembelianWalletRoute = '/ppobPembelianWalletRoute';
  static const String ppobTolRoute = '/ppobTolRoute';
  static const String ppobPembelianTolRoute = '/ppobPembelianTolRoute';
  static const String ppobPascabayarRoute = '/ppobPascabayarRoute';
  static const String ppobPembayaranPascaRoute = '/ppobPembayaranPascaRoute';
  static const String ppobPlnRoute = '/ppobPlnRoute';
  static const String ppobPembayaranPlnRoute = '/ppobPembayaranPlnRoute';
  static const String ppobPembelianTokenPlnRoute =
      '/ppobPembelianTokenPlnRoute';
  static const String ppobAsuransiRoute = '/ppobAsuransiRoute';
  static const String ppobPembayaranAsuransiRoute =
      '/ppobPembayaranAsuransiRoute';
  static const String ppobPdamRoute = '/ppobPdamRoute';
  static const String ppobPembayaranPdamRoute = '/ppobPembayaranPdamRoute';
  static const String ppobPgnRoute = '/ppobPgnRoute';
  static const String ppobPembayaranPgnRoute = '/ppobPembayaranPgnRoute';
  static const String ppobTelkomRoute = '/ppobTelkomRoute';
  static const String ppobPembayaranTelkomRoute = '/ppobPembayaranTelkomRoute';
  static const String ppobFinanceRoute = '/ppobFinanceRoute';
  static const String ppobPembayaranFinanceRoute =
      '/ppobPembayaranFinanceRoute';
  static const String ppobTvRoute = '/ppobTvRoute';
  static const String ppobPembayaranTvRoute = '/ppobPembayaranTvRoute';
  static const String ppobPendidikanRoute = '/ppobPendidikanRoute';
  static const String ppobPembayaranPendidikanRoute =
      '/ppobPembayaranPendidikanRoute';
  static const String ppobStrukRoute = '/ppobStrukRoute';
  static const String ppobCekPinRoute = '/ppobCekPinRoute';
  static const String ppobDetailTrxRoute = '/ppobDetailTrxRoute';

  static const String ppobPascaKeyName = 'Pascabayar';
  static const String ppobPlnKeyName = 'PLN';
  static const String ppobPlnProdukKeyName = 'Pln Produk';
  static const String ppobTokenDenomPlnKeyName = 'Token Denom Pln';
  static const String ppobAsuransiKeyName = 'Asuransi';
  static const String ppobPdamKeyName = 'PDAM';
  static const String ppobPgnKeyName = 'PGN';
  static const String ppobTelkomKeyName = 'Telkom';
  static const String ppobFinanceKeyName = 'Finance';
  static const String ppobTvKeyName = 'TV';
  static const String ppobPendidikanKeyName = 'Pendidikan';
  static const String ppobPendidikanProdukKeyName = 'Pendidikan Produk';
  static const String ppobPendidikanJenisKeyName = 'Pendidikan Jenis';
  static const String ppobWalletKeyName = 'E-Wallet';
  static const String ppobTolKeyName = 'E-Tol';
  static const String ppobTolProdukKeyName = 'Tol Produk';
  static const String ppobTolDenomKeyName = 'Tol Denom';
  static const String ppobPulsaKeyName = 'Pulsa';
  static const String ppobKaiKeyName = 'KAI';

  static const String ppobCekPinRouteId = 'ppobCekPinRouteId';
  static const String ppobStrukRouteId = 'ppobStrukRouteId';
  static const String ppobAsuransiRouteBackButtonId =
      'ppobAsuransiRouteBackButtonId';
  static const String ppobAsuransiRouteId = 'ppobAsuransiRouteId';
  static const String ppobPembayaranAsuransiBackButtonRouteId =
      'ppobPembayaranAsuransiBackButtonRouteId';
  static const String ppobPembayaranAsuransiRouteId =
      'ppobPembayaranAsuransiRouteId';
  static const String ppobFinanceRouteBackButtonId =
      'ppobFinanceRouteBackButtonId';
  static const String ppobFinanceRouteId = 'ppobFinanceRouteId';
  static const String ppobPembayaranFinanceBackButtonRouteId =
      'ppobPembayaranFinanceBackButtonRouteId';
  static const String ppobPembayaranFinanceRouteId =
      'ppobPembayaranFinanceRouteId';
  static const String ppobTvRouteBackButtonId = 'ppobTvRouteBackButtonId';
  static const String ppobTvRouteId = 'ppobTvRouteId';
  static const String ppobPembayaranTvBackButtonRouteId =
      'ppobPembayaranTvBackButtonRouteId';
  static const String ppobPembayaranTvRouteId = 'ppobPembayaranTvRouteId';
  static const String ppobTelkomRouteBackButtonId =
      'ppobTelkomRouteBackButtonId';
  static const String ppobTelkomRouteId = 'ppobTelkomRouteId';
  static const String ppobPembayaranTelkomBackButtonRouteId =
      'ppobPembayaranTelkomBackButtonRouteId';
  static const String ppobPembayaranTelkomRouteId =
      'ppobPembayaranTelkomRouteId';
  static const String ppobPdamRouteBackButtonId = 'ppobPdamRouteBackButtonId';
  static const String ppobPdamRouteId = 'ppobPdamRouteId';
  static const String ppobPembayaranPdamBackButtonRouteId =
      'ppobPembayaranPdamBackButtonRouteId';
  static const String ppobPembayaranPdamRouteId = 'ppobPembayaranPdamRouteId';
  static const String ppobPascaRouteBackButtonId = 'ppobPascaRouteBackButtonId';
  static const String ppobPascaRouteId = 'ppobPascaRouteId';
  static const String ppobPembayaranPascaBackButtonRouteId =
      'ppobPembayaranPascaBackButtonRouteId';
  static const String ppobPembayaranPascaRouteId = 'ppobPembayaranPascaRouteId';
  static const String ppobPgnRouteBackButtonId = 'ppobPgnRouteBackButtonId';
  static const String ppobPgnRouteId = 'ppobPgnRouteId';
  static const String ppobPembayaranPgnBackButtonRouteId =
      'ppobPembayaranPgnBackButtonRouteId';
  static const String ppobPembayaranPgnRouteId = 'ppobPembayaranPgnRouteId';
  static const String ppobTolRouteBackButtonId = 'ppobTolRouteBackButtonId';
  static const String ppobTolRouteId = 'ppobTolRouteId';
  static const String ppobPembelianTolBackButtonRouteId =
      'ppobPembelianTolBackButtonRouteId';
  static const String ppobPembelianTolRouteId = 'ppobPembelianTolRouteId';
  static const String ppobPendidikanRouteBackButtonId =
      'ppobPendidikanRouteBackButtonId';
  static const String ppobPendidikanRouteId = 'ppobPendidikanRouteId';
  static const String ppobPembayaranPendidikanBackButtonRouteId =
      'ppobPembayaranPendidikanBackButtonRouteId';
  static const String ppobPembayaranPendidikanRouteId =
      'ppobPembayaranPendidikanRouteId';
  static const String ppobWalletRouteBackButtonId =
      'ppobWalletRouteBackButtonId';
  static const String ppobWalletRouteId = 'ppobWalletRouteId';
  static const String ppobPembelianWalletBackButtonRouteId =
      'ppobPembelianWalletBackButtonRouteId';
  static const String ppobPembelianWalletRouteId = 'ppobPembelianWalletRouteId';
  static const String ppobPlnRouteBackButtonId = 'ppobPlnRouteBackButtonId';
  static const String ppobPlnDropdownProdukId = 'ppobPlnDropdownProdukId';
  static const String ppobPlnDropdownDenomId = 'ppobPlnDropdownDenomId';
  static const String ppobPlnNumberInputId = 'ppobPlnNumberInputId';
  static const String ppobPlnActionButtonId = 'ppobPlnActionButtonId';
  static const String ppobPlnRouteId = 'ppobPlnRouteId';
  static const String ppobPembelianTokenPlnBackButtonRouteId =
      'ppobPembelianTokenPlnBackButtonRouteId';
  static const String ppobPembelianTokenPlnRouteId =
      'ppobPembelianTokenPlnRouteId';
  static const String ppobPembayaranPlnBackButtonRouteId =
      'ppobPembayaranPlnBackButtonRouteId';
  static const String ppobPembayaranPlnRouteId = 'ppobPembayaranPlnRouteId';
  static const String ppobKaiRouteBackButtonId = 'ppobKaiRouteBackButtonId';
  static const String ppobKaiRouteId = 'ppobKaiRouteId';
  static const String ppobKaiFromId = 'ppobKaiFromId';
  static const String ppobKaiToId = 'ppobKaiToId';
  static const String ppobKaiPassangerId = 'ppobKaiPassangerId';
  static const String ppobKaiAdultPassangerId = 'ppobKaiAdultPassangerId';
  static const String ppobKaiInfantPassangerId = 'ppobKaiInfantPassangerId';
  static const String ppobKaiDepartureDateId = 'ppobKaiDepartureDateId';
  static const String ppobOrderFormKaiRouteBackButtonId =
      'ppobOrderFormKaiRouteBackButtonId';
  static const String ppobListOfKaiJadwalRouteId = 'ppobListOfKaiJadwalRouteId';
  static const String ppobOrderFormKaiRouteId = 'ppobOrderFormKaiRouteId';
  static const String ppobTripDetailId = 'ppobTripDetailId';
  static const String ppobPembelianKaiRouteId = 'ppobPembelianKaiRouteId';
  static const String ppobRiwayatTrxRouteId = 'ppobRiwayatTrxRouteId';

  /// pasar routes name
  static const String pasarRoute = '/pasarRoute';
  static const String pasarDetailProdukRoute = '/pasarDetailProdukRoute';

  /// surat routes name
  static const String suratRoute = '/suratRoute';
  static const String suratListOfLettersRoute = '/suratListOfLettersRoute';
  static const String suratRequirementsOfLetterRoute =
      '/suratRequirementsOfLetterRoute';
  static const String suratRequestSduFormRoute = '/suratRequestSduFormRoute';
  static const String suratRequestSkckFormRoute = '/suratRequestSkckFormRoute';
  static const String suratRequestNpwpFormRoute = '/suratRequestNpwpFormRoute';
  static const String suratRequestKtpFormRoute = '/suratRequestKtpFormRoute';
  static const String suratRequestNasabFormRoute =
      '/suratRequestNasabFormRoute';
  static const String suratRequestHilangFormRoute =
      '/suratRequestHilangFormRoute';
  static const String suratRequestBayiFormRoute = '/suratRequestBayiFormRoute';
  static const String suratRequestJandaFormRoute =
      '/suratRequestJandaFormRoute';
  static const String suratRequestMatiFormRoute = '/suratRequestMatiFormRoute';
  static const String suratRequestNikahPindahFormRoute =
      '/requestNikahPindahFormRoute';
  static const String suratRequestSeniFormRoute = '/suratRequestSeniFormRoute';
  static const String suratFormNotReadyRoute = '/suratFormNotReadyRoute';
  static const String suratQrCodeRoute = '/suratQrCodeRoute';
  static const String suratListOfStatusLettersRoute =
      '/suratListOfStatusLettersRoute';
  static const String suratStatusLetterDetailRoute =
      '/suratStatusLetterDetailRoute';

  static const String suratPengajuanKeyName = 'Pengajuan';
  static const String suratStatusKeyName = 'Status';
  static const String suratListOfLettersRouteId = 'suratListOfLettersRouteId';
  static const String suratRequirementsOfLettersRouteId =
      'suratRequirementsOfLettersRouteId';
  static const String suratRequestLetterRouteId = 'suratRequestLetterRouteId';
  static const String suratStatusLetterRouteId = 'suratStatusLetterRouteId';

  static const String errCode = 'errcode';
  static const String message = 'pesan';
  static const String prove = 'bukti';

  static const String domisiliUsaha = 'DOMISILI_USAHA';
  static const String skck = 'SKCK';
  static const String npwp = 'NPWP';
  static const String kk = 'KK';
  static const String nasab = 'NASAB';
  static const String hilang = 'HILANG';
  static const String bayi = 'BAYI';
  static const String janda = 'JANDA';
  static const String mati = 'MATI';
  static const String nikahPindah = 'NIKAH_PINDAH';
  static const String seni = 'SENI';

  /// antri routes name
  static const String antriRoute = '/antriRoute';
  static const String antrAmbil = '/antriAmbilRoute';
  static const String antrInformasi = '/antriInformasi';
  static const String antrHistory = '/antriHistory';
  static const String antrDetail = '/antriDetail';

  /// adu routes name
  static const String aduRoute = '/aduRoute';
  static const String aduAduanTab = '/aduAduanRoute';
  static const String aduHistoryTab = '/aduHistoryRoute';
  static const String aduGmapTab = '/aduGmapTab';

  static const String aduRouteId = '/aduRouteId';

  /// catat routes name
  static const String catatDataRoute = '/catatDataRoute';
  static const String catatDataIRoute = '/catatDataIRoute';
  static const String catatDataIIRoute = '/catatDataIIRoute';
  static const String catatDataIIIRoute = '/catatDataIIIRoute';
  static const String catatDataIVRoute = '/catatDataIVRoute';
  static const String catatDataIVSubmiteTab = '/catatDataIVSubmiteTab';
  static const String catatDataSekolahLuarTab = '/catatDataSekolahLuarTab';
  static const String catatDataUsahaTab = '/catatDataUsahaTab';
  static const String catatDataVRoute = '/catatDataVRoute';

  ///main akun url
  static const String getNova = 'keuangan/nova';
  static const String getMenuAkun = 'menuakun';
  static const String getDetailProfil = 'getprofile';
  static const String logoutUrl = 'logout';

  /// main akun route name
  static const String mainAkunListVa = '/mainAkunListVa';
  static const String mainAkunHistory = '/mainAkunHistory';
  static const String mainAkunComplaint = '/mainAkunComplaint';
  static const String mainAkunHelp = '/mainAkunHelp';

  static const String ppobStatusCek3 = '3';
  static const String ppobStatusCek4 = '4';
}
