#include <iostream>
#include <cmath>

using namespace std;

// Function to calculate the cab fare
double calculateCabFare(double distance, int passengers, bool airport) {
  // Minimum fare
  double fare = 5.00;

  // Calculate fare based on distance
  fare += ceil(distance * 10) * 0.18; // Charged per 1/10th of a mile

  // Add passenger charges
  if (passengers > 1) {
    fare += 1.00; // First additional passenger
    fare += (passengers - 2) * 0.50; // Each additional passenger after the first
  }

  // Add airport surcharge
  if (airport) {
    fare += 2.00;
  }

  return fare;
}

int main() {
  double distance;
  int passengers;
  char airportChoice;
  bool airport;

  // Get user input
  cout << "Enter distance in miles (to the nearest 1/10th of a mile): ";
  cin >> distance;

  cout << "Enter number of passengers: ";
  cin >> passengers;

  cout << "Going to/coming from the airport? (y/n): ";
  cin >> airportChoice;

  // Set airport flag based on user input
  airport = (airportChoice == 'y' || airportChoice == 'Y');

  // Calculate and display the fare
  double fare = calculateCabFare(distance, passengers, airport);
  cout << "The total fare is: $" << fare << endl;

  return 0;
}
