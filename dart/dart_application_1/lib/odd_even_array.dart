void main() {
  List<int> arr2 = [2, 5, 4, 7, 8, 56, 21, 45, 78];
  print(oddandEven(arr2));
  ({int even, int odd}) isoddoeevn = isoddorEven(arr2);
  print("Odd:${isoddoeevn.odd},Even:${isoddoeevn.even}");
}

String oddandEven(List<int> arr) {
  int odd = 0;
  int even = 0;
  int evensum = 0;
  int oddsum = 0;
  for (int i = 0; i <= arr.length - 1; i++) {
    if (arr[i] % 2 == 0) {
      even++;
      evensum += arr[i];
    } else {
      odd++;
      oddsum += arr[i];
    }
  }

  return "The number of odd numbers is $odd and sum is $oddsum and the number of evren numbers is $even and sum is $evensum";
}

({int odd, int even}) isoddorEven(List<int> arr) {
  int odd = 0;
  int even = 0;
  for (int i in arr) {
    if (i % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  return (odd: odd, even: even);
}