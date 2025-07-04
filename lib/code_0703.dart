// [1] 1~10000까지 더하기
//    반복문 사용하기
// void main() {
//  int result = getSum(10000);
//  print(result);
// }

// int getSum(int num) {
//   int sum = 0;
//   for (var i = 1; i <= 10000; i++) {
//     sum += i;
//   }
//   return sum;
// }

/// [2] 가우스 방법
/// 1~100 => (100 * 100 + 1)) / 2
/// 1, 2, 3, 4, 5 ... 100;

// void main() {
//   int result = getSum(10000);
//   print(result);
// }

// int getSum(int num) {
//   int num = 10000;
//   int sum = (num * (num + 1)) ~/ 2;
//   return sum;
// }

// [2] 리스트 뒤집기
//     [1, 2, 3, 4, 5] => [5, 4, 3, 2, 1]
// void main() {
//   List<int> before = [1, 2, 3, 4, 5];

// // 방법 1: `List`가 가지고 있는 `reversed` 메서드 사용
//   final result1 = before.reversed.toList();
//   print(result1);
//   print(before);
// }

// 방법 2 : 새로운 리스트 만들어서 `List`의 길이만큼 반복하면서 반대 값 넣어주기
void main() {
  List<int> before = [1, 2, 3, 4, 5];
  // List<int> result2 = [];
  // for (var i = 0; i < before.length; i++) {
  //   result2.add(before[before.length - 1 - i]);
  // }
  // print(result2);
  print(reverse1(before));
  print(before);
}

List<int> reverse1(List<int> list) {
  List<int> result2 = [];
  for (var i = 0; i < list.length; i++) {
    result2.add(list[list.length - 1 - i]);
  }
  return result2;
}
