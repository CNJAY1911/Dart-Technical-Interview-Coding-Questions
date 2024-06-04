/*
Function: 
bool isCurrentVersionGreaterThanOrEqualToMinimum(String currentVersion, String minimumSupportedVersion) 

Input -> Output
   1.2.34 >= 1.2.9  -> TRUE
    1.2.34 >= 1.3.0  -> FALSE
   1.0.0 >= 1.0.0  -> TRUE

*/

bool isCurrentVersionGreaterThanOrEqualToMinimum(
    String currentVersion, String minimumSupportedVersion) {
  // Split the version strings into their respective components
  List<int> currentVersionComponents =
      currentVersion.split('.').map(int.parse).toList();
  List<int> minimumVersionComponents =
      minimumSupportedVersion.split('.').map(int.parse).toList();

  // Compare each component of the version strings
  for (int i = 0; i < currentVersionComponents.length; i++) {
    // If the current version component is greater, return true
    if (currentVersionComponents[i] > minimumVersionComponents[i]) {
      return true;
    }
    // If the current version component is less, return false
    else if (currentVersionComponents[i] < minimumVersionComponents[i]) {
      return false;
    }
    // If both components are equal, continue to the next component
    else {
      continue;
    }
  }

  // If all components are equal, return true
  return true;
}

void main() {
  print(isCurrentVersionGreaterThanOrEqualToMinimum(
      '1.2.34', '1.2.9')); // Output: true
  print(isCurrentVersionGreaterThanOrEqualToMinimum(
      '1.2.34', '1.3.0')); // Output: false
  print(isCurrentVersionGreaterThanOrEqualToMinimum(
      '1.0.0', '1.0.0')); // Output: true
}
