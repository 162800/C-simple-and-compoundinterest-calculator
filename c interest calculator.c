#include <stdio.h>

int main() {
  float principal, time, rate, simple_interest;

  printf("Enter principal amount: ");
  scanf("%f", &principal);

  printf("Enter time period (years): ");
  scanf("%f", &time);

  printf("Enter interest rate (percentage): ");
  scanf("%f", &rate);

  // Direct calculation and display of simple interest
  simple_interest = (principal * time * rate) / 100;
  printf("Simple Interest: %.2f\n", simple_interest);

  return 0;
}
