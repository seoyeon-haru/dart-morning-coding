import 'dart:io';

void main() {
  // 1234 => 1235
  // [1, 2, 3, 4] => [1, 2, 3, 5]
  List<int> digits = [1, 2, 3, 4];
  print(addOne2(digits));

  // 1239 => 1240
  // [1, 2, 3, 9] => [1, 2, 4, 0]
  List<int> digits2 = [1, 2, 3, 9];
  print(addOne2(digits2));

  // 9999 => 10000
  // [9, 9, 9, 9] => [1, 0, 0, 0, 0]
  List<int> digits3 = [9, 9, 9, 9];
  print(addOne2(digits3));
}

List<int> addOne(List<int> digits) {
  // 1더하기
  List<String> strList = [];
  for (var i = 0; i < digits.length; i++) {
    strList.add('${digits[i]}');
  }
  String numberStr = strList.join('');
  int addedValue = int.parse(numberStr) + 1;
  // 문자열로 변경
  String addedValueStr = '$addedValue';
  // Split으로 변경
  List<String> addedValueList = addedValueStr.split('');
  // int List로 변경
  List<int> result = [];
  for (var i = 0; i < addedValueList.length; i++) {
    result.add(int.parse(addedValueList[i]));
  }

  return result;
}

// 두 번째 방법: 리스트 순회하면서 직접 계산하기
List<int> addOne2(List<int> digits) {
  for (var i = digits.length - 1; i >= 0; i--) {
    digits[i] += 1;
    if (digits[i] <10) {
      return digits;
    }
    digits[i] = 0;
  }

  digits.insert(0, 1);
  return digits;
}
