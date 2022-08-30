//Represents the different ways a user may be asked to enter information
//in the application process. This is used to determine which widget to
//display in the application process.
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/apply/apply_state.dart';

enum FormType {
  // ^ Constants for FormType [Data we already have]:
  //0
  name,
  //1
  email,
  //2
  phone,
  //3
  nationalId,
  //4
  password,
  //5
  address,
  //6
  gender,
  //7
  maritalStatus,
  //8
  countrySelector,
  // * non-constant values
  //9 user enters a single line of text
  string,
  //10 user enters a single number
  number,
  //11 date selector
  date,
  //12 string group buttons
  radio,
  //13 drop down menus with a list of strings
  dropDown,
  //14 horizontal divider
  divider,
  //15 title indicating new section
  title,
  //16 multiline string input by user
  description,
  //17 multiline string shown to user
  richText,
  //18 select a certain quantity using + and - buttons
  quantity,

  //19 image group button
  imageRadio,
  //20 text input + country selector
  adress,
  //21 textinput + input value slider
  slider,
  //22 upload image button, Can have a hint text
  uploadImage,
  //23 details of the loan application
  loanDetails,
  //24 Bank Branch selector
  bankBranch,
  //25 Add Person to loan
  addPerson,
  //26 Loan Value calculator
  loanValue,
  //27 multi Widget Radio button
  multiWidgetRadio,
}

// /// validators for string/number form fields
// enum Validators {
//   required,
//   email,
//   phone,
//   password,
//   nationalId,
// }

class ApplyStateNotifier extends StateNotifier<ApplicationState> {
  ApplyStateNotifier()
      : super(
          ApplicationState(
            image: '',
            loanId: 0,
            loanTitle: '',
            steps: [],
          ),
        );

  Future<void> loadSteps() async {
    //TODO: Load steps from api repo
  }
  void nextStep() {
    state = state..currentStep = state.currentStep++;
  }

  void prevStep() {
    state = state..currentStep = state.currentStep--;
  }
}

final applyStateProvider =
    StateNotifierProvider<ApplyStateNotifier, ApplicationState>(
  (ref) => ApplyStateNotifier(),
);
