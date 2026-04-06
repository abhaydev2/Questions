void main (){
  List<int> arr = [1,2,3,4,5,6,7,8,9,89];  
int sum = calculateSum(arr);
print(sum);
}

int calculateSum(List<int> arr) {
  int sum = 0;

  for (int i in arr) {
    sum += i;
  }
  return sum;
}
 

  
