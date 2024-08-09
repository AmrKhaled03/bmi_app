import 'dart:math';

class BmiOperation {
  int height;
  int weight;
  double? _bmi;
  BmiOperation({required this.height, required this.weight});

  double calcBmi() {
    if (height == 0 || weight == 0) {
      return 0;
    } else {
      _bmi = weight / pow(height / 100, 2);
      return _bmi!;
    }
  }

  String getResult() {
    if (_bmi == null) {
      return "BMI not calculated";
    }
    if (_bmi! >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi! > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation() {
    if (_bmi == null) {
      return "No interpretation available without BMI calculation."
          .toUpperCase();
    }
    if (_bmi! >= 25) {
      return "YOU HAVE A HIGHER THAN NORMAL BODYWEIGHT . TRY TO EXERCISE MORE .";
    } else if (_bmi! > 18.5) {
      return "YOU HAVE A NORMAL BODY WEIGHT . GOOD JOB !";
    } else {
      return "YOU HAVE A LOWER THAN NORMAL BODYWEIGHT . TRY TO EAT MORE .";
    }
  }
}
