void main() {
  print(CalculateArea(radius:6));
  print(CalculateArea(radius:10,pi:45));
  print(CalculateArea(pi:4,radius:43));

}
// Optional parameter : []
// named parameter : {} -> sabai optional huncha

double CalculateArea({required double radius, double pi = 3.14}) {
  return pi * radius * radius;
}
