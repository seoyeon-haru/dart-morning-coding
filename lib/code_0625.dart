void main() {
  // 여기서 별(*)로 피라미드 출력
  // 5단짜리
  //      *
  //     ***
  //    *****
  //   ********
  //  **********

  // 첫번째 : 규칙찾기!
  // 별은 1부터 시작해서 2씩 증가
  // 공백은 마지막단수 -1 부터 시작해서 1씩 감소
  // 별 : 1 공백 : 4
  // print(" " * space + "*" * star);
  // 별 : 3 공백 : 3
  // star += 2; // star = star + 2;
  // space--; // => space = space - 1;
  // print(" " * space + "*" * star);
  // 별 : 5 공백 : 2
  // star += 2; // star = star + 2;
  // space--; // => space = space - 1;
  // print(" " * space + "*" * star);
  // 별 : 7 공백 : 1
  // star += 2; // star = star + 2;
  // space--; // => space = space - 1;
  // print(" " * space + "*" * star);
  // 별 : 9 공백 : 0
  // star += 2; // star = star + 2;
  // space--; // => space = space - 1;
  // print(" " * space + "*" * star);
  
  // 두번째
  // 찾은 규칙으로 반복문 돌리기
 // int n = 5;
 // int star = 1;
 // int space = n;
// 1, 2, 3, 4, 5
  //for (var i = 1; i <= n; i++) {
  // star += 2; // star = star + 2
  // space --;
  // print(" " * space + "*" * star);
  // }
  // 세번째
  // 코드 줄여보기
  int n = 5;
  for (int i = 1; i <= n; i++) {
    print(" " * (n - i) + "*" * ((2 * i) - 1));
  }
}