import 'dart:io';

void main() {
  print('Welcome to Biodata Generator!');
  print('Please enter your personal information.');

  // Collect user input
  final name = promptForInput('Name: ');
  final phoneNumber = promptForInput('Phone number: ');
  final age = promptForInput('Age: ');
  final height = promptForInput('Height (cm): ');
  final weight = promptForInput('Weight (kg): ');
  final address = promptForInput('Address: ');

  // Collect a list of hobbies
  final hobbies = <String>[];
  while (true) {
    final hobby = promptForInput('Enter a hobby (or leave blank to finish): ');
    if (hobby.isEmpty) {
      break;
    }
    hobbies.add(hobby);
  }

  // Generate and display the formatted biodata
  print('\nBiodata:');
  print('╔════════════════════════════╗');
  print('║ Name:       $name');
  print('║ Phone:      $phoneNumber');
  print('║ Age:        $age years');
  print('║ Height:     $height cm');
  print('║ Weight:     $weight kg');
  print('║ Address:    $address');
  if (hobbies.isNotEmpty) {
    print('║ Hobbies:');
    for (final hobby in hobbies) {
      print('║   - $hobby');
    }
  }
  print('╚════════════════════════════╝');
}

String promptForInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync() ?? '';
}
