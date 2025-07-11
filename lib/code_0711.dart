import 'dart:math';

void main() {
  print(generateLotto());
  print(generateLottoWithSet());
}

List<int> generateLotto() {
  // 로또 번호 추첨하는 함수 만들기
  // 1. Random 이용해서 6개의 숫자 리스트에 추가하고 정렬
  // 2. 함수로 옮기기
  // 주의사항 : 중복되면 안됨

  List<int> result = [];
  Random random = Random();
  // 반복문: 조건 result의 아이템 개수가 6개보다 작을 동안!
  while (result.length < 6) {
    int value = random.nextInt(45) + 1; // 0~45
    bool isContain = result.contains(value);
    if (!isContain) {
      result.add(value);
    }
  }
  //정렬
  result.sort();
  return result;
}

List<int> generateLottoWithSet() {
  // Set은 리스트와 같은 역할을 하나 중복을 허용하지 않음
  // Set에 중복된 값을 넣으면 안들어감
  Set<int> result = {};
  Random random = Random();
  while (result.length < 6) {
    int value = random.nextInt(45) + 1;
    result.add(value);
  }
  //정렬
  List<int> resultList = result.toList();
  resultList.sort();
  return resultList;
}
