part of mrz_parser;

class MRZFieldRecognitionDefectsFixer {
  MRZFieldRecognitionDefectsFixer._();

  static String fixDocumentType(String input) =>
      input.replaceSimilarDigitsWithLetters();

  static String fixCheckDigit(String input) =>
      input.replaceSimilarLettersWithDigits();

  static String fixDate(String input) =>
      input.replaceSimilarLettersWithDigits();

  static String fixSex(String input) => input.replaceAll('P', 'F');

  static String fixCountryCode(String input) =>
      input.replaceSimilarDigitsWithLetters();

  static String fixNames(String input) =>
      input.replaceSimilarDigitsWithLetters();

  static String fixNationality(String input) =>
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
