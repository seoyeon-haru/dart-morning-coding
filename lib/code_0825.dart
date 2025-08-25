void main() {
  List<int> sortedNums = [ 2, 3, 4, 6, 7, 8, 9, 10];
  print(twoSum(sortedNums, 7));
  print(twoSum(sortedNums, 5));
  print(twoSum(sortedNums, 13));
}

// 두 수의 합
// 정렬된 배열 내에서
// 합이 정확이 target이 되는 두 원소 찾기
// target: 9
// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// => [1, 8]

// 함수명 twoSum
// 인자: List<int> sortedNums, int target
// 반환타입 List<int>

List<int> twoSum(List<int> sortedNums, int target) {
  for (var i = 0; i < sortedNums.length; i++) {
    for (var j = i + 1; j < sortedNums.length; j++) {
      if (sortedNums[i] + sortedNums[j] == target) {
        return [sortedNums[i], sortedNums[j]];
      }
    }
  }
  return [];
}
