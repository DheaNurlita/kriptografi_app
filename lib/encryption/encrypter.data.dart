part of '../_index.dart';

String encryptData2({
  required String text,
  encrypt.AESMode? aesmode,
}) {
  final key = encrypt.Key.fromUtf8(EncryptionData.encryptionKey);
  final iv = encrypt.IV.fromUtf8(EncryptionData.encryptionIV);
  final encrypter =
      encrypt.Encrypter(encrypt.AES(key, mode: aesmode ?? encrypt.AESMode.cbc, padding: EncryptionModes.AESPADDING));

  final encrypted = encrypter.encrypt(text, iv: iv);

  // ignore: avoid_print
  print("$text has been encrypted , and this is the value ${encrypted.base64}");
  final decrypted = encrypter.decrypt(encrypted, iv: iv);
  // ignore: avoid_print
  print("${encrypted.base64} has been decrypted to $decrypted");

  return encrypted.base64;
}

String decryptData2({
  required String text,
  encrypt.AESMode? aesmode,
}) {
  final key = encrypt.Key.fromUtf8(EncryptionData.encryptionKey);
  final iv = encrypt.IV.fromUtf8(EncryptionData.encryptionIV);
  final encrypter =
      encrypt.Encrypter(encrypt.AES(key, mode: aesmode ?? encrypt.AESMode.cbc, padding: EncryptionModes.AESPADDING));

  final encrypted = encrypter.encrypt(text, iv: iv);

  // ignore: avoid_print
  print("$text has been encrypted , and this is the value ${encrypted.base64}");
  final decrypted = encrypter.decrypt(encrypted, iv: iv);
  // ignore: avoid_print
  print("${encrypted.base64} has been decrypted to $decrypted");

  return decrypted;
}
