void main() {
  print('2 ${isPrime(2)}'); // true
  print('4 ${isPrime(4)}'); // false
  print('6 ${isPrime(6)}'); // false
  print('7 ${isPrime(7)}'); // true
  print('9 ${isPrime(9)}'); // false
  print('13 ${isPrime(13)}'); // true
}

// 소수인지 판별하는 함수 
// 1과 자기자신으로만 나누어지는 수이면 true 리턴
// 아니라면 false 리턴
// 함수 반환타입 bool
// 함수 이름 isPrime
// 함수 인자 int number
bool isPrime(int number) {
  final half = number ~/ 2;
  for (var i = 2; i <= half; i++) {
    if(number % i == 0) {
      return false;
    }
  }
  return true;
}