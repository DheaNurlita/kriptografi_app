part of '../_index.dart';

String get sic => EncryptionModes.PADDING;

String get encryptionKey => EncryptionModes.ENCRYPTION_IV;

String get encryptionIV => EncryptionModes.ENCRYPTION_IV;

class EncryptionModes {
  // ignore: constant_identifier_names
  static const CBC = "AESMode.cbc";

  // ignore: constant_identifier_names
  static const CFB64 = "AESMode.cfb64";

  // ignore: constant_identifier_names
  static const CTR = "AESMode.ctr";

  // ignore: constant_identifier_names
  static const ECB = "AESMode.ecb";

  // ignore: constant_identifier_names
  static const OFB64GCTR = "AESMode.ofb64Gctr";

  // ignore: constant_identifier_names
  static const OFB64 = "AESMode.ofb64";

  // ignore: constant_identifier_names
  static const SIC = "AESMode.sic";

  // ignore: constant_identifier_names
  static const PADDING = "PKCS7";

  // ignore: constant_identifier_names
  static const ENCRYPTION_IV = "";

  // ignore: constant_identifier_names
  static const AESPADDING = "PKCS7";
}
