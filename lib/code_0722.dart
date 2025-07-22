void main() {
  print('my_project : ${snakeToCamel("my_project")}');
}

// 스네이크 케이스를 입력뱓아서 카멜 케이스로 변환
// 반환 타입 : String
// 함수명 : snakeToCamel
// 함수 인자 : String snakeStr
// 예시 1 : my_project => myProject
// 예시 2 : this_is_dart => thisIsDart

String snakeToCamel(String snakeStr) {
  List<int> codeUnits = snakeStr.codeUnits;
  List<int> newCodeUnits = [codeUnits[0]];
  for (var i = 1; i < codeUnits.length; i++) {
    int prevChar = codeUnits[i - 1];
    int currChar = codeUnits[i];
    if (currChar == 95) {
      continue;
    }
    if (prevChar == 95 && 97 <= currChar && currChar <= 122) {
      newCodeUnits.add(currChar - 32);
    } else {
      newCodeUnits.add(currChar);
    }
  }

  return String.fromCharCodes(newCodeUnits);
}
