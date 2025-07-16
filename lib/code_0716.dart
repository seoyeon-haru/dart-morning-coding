void main() {
  print('aaabbc : ${compression("aaabbc")}');
}

// 문자열 압축하기
// aaabbc => a3b2c1
// aaabbbbbccccaaasss => a3b5c4a3s3
// 반환타입 : 문자열
// 함수이름 : compression
// 함수인자 : 문자열 str
// 한글자씩 분리 후 반복문을 이용해서 문자열 처리

String compression(String str) {
  // 1. 문자열 한글자씩 분리하기
  // aaabbc => [a, a, a, b, b, c]
  List<String> splited = str.split('');
  // 2. 반복문 이용해서 처리하기
  // [a, a, a, b, b, c]
  int count = 1;
  List<String> newStr = [];
  for (int i = 1; i < splited.length; i++) {
    String prevChar = splited[i - 1];
    String currChar = splited[i];
    //print('prev : $prevChar $currChar');
    // 만일 이전 글자와 현재 글자가 같다면 => Count 증가
    // 다르다면 => 이전 문자열 + Count를 newStr에 추가 & Count를 1로 초기화
    if (prevChar == currChar) {
      count++;
    } else {
      newStr.add('$prevChar$count');
      count = 1;
    }
  }

  newStr.add('${splited[splited.length - 1]}$count');
  return newStr.join();
}
