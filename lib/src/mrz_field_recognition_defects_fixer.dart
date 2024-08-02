part of 'mrz_parser.dart';

class MRZFieldRecognitionDefectsFixer {
  MRZFieldRecognitionDefectsFixer._();

  static String fixDocumentType(final String input) =>
      input.replaceSimilarDigitsWithLetters();

  static String fixCheckDigit(final String input) =>
      input.replaceSimilarLettersWithDigits();

  static String fixDate(final String input) =>
      input.replaceSimilarLettersWithDigits();

  static String fixSex(final String input) => input.replaceAll('P', 'F');

  static String fixCountryCode(final String input) =>
      input.replaceSimilarDigitsWithLetters();

  static String fixNames(final String input) =>
      input.replaceSimilarDigitsWithLetters();

  static String fixNationality(final String input) =>
      input.replaceSimilarDigitsWithLetters();

  static String fixDocumentNumber(
    String input,
    String DocumentTypeCode,
    String CountryCode,
  ) {
    if (DocumentTypeCode == "ID") {
      if (["BEL", "UKR"].contains(CountryCode)) {
        return input.replaceSimilarLettersWithDigits();
      }
    }
    return input;
  }
}
