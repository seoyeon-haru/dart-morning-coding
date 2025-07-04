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
void main() {
int num = 10000;
int sum = (num * (num + 1)) ~/2;
print(sum);
} 


// [2] 리스트 뒤집기
//     [1, 2, 3, 4, 5] => [5, 4, 3, 2, 1]
// List<int> before = [1, 2, 3, 4, 5];
//     final result = before.reversed.toList();
///    print(result);