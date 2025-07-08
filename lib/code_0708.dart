void main() {
  print(isRepeated("ababab"));
  print(isRepeated("abcabc"));
  print(isRepeated("abcabcabcabc"));
  print(isRepeated("abcdabc"));
}

bool isRepeated(String s) {
  // 반복되는 문자열로만 이루어져 있으면 true
  // => 반복되는 문자를 지워봤을 때 남는 글자가 없으면 true

  int sLength = s.length;

  for (var i = 1; i <= sLength ~/ 2; i++) {
    // 자르기 시작할 인덱스, 몇 글자 자를건지
    // 전체 문자열의 길이를
    //자른 문자열의 길이로 나누었을 때
    //나머지가 0 일때만
    // 맞아떨어지는 글자!
    if (sLength % i == 0) {
      String ss = s.substring(0, i);
      String target = ss * (sLength ~/ i);
      print(target);
      if (target == s) {
        return true;
      }
    }
  }
  return false;
}
