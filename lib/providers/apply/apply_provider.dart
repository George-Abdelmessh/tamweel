//Represents the different ways a user may be asked to enter information
//in the application process. This is used to determine which widget to
//display in the application process.

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/apply/apply_state.dart';
import 'package:tamweel/models/loan/loan_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

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
  ApplyStateNotifier(this.ref)
      : super(
          ApplicationState(
            steps: [],
          ),
        );

  Ref ref;

  // void reset() {
  //   state = ApplicationState(
  //     steps: [],
  //   );
  // }

  Future<void> loadSteps(int id) async {
    final jsonMap = await ApiRepo.getLoanSteps(id);
    state = ApplicationState(
      //ignore_for_file: avoid_dynamic_calls
      //ignore: argument_type_not_assignable
      steps: jsonMap['steps'],
      endSummary: jsonMap['end_summary'] == 1,
    );
  }

  ///Move to the next Form Step
  void nextStep() {
    if (state.currentStep! < state.steps.length - 1) {
      state = state..currentStep = state.currentStep! + 1;
      state = ApplicationState(
        steps: state.steps,
        currentStep: state.currentStep,
        endSummary: state.endSummary,
        answers: state.answers,
      );
      // print(state.currentStep);
    }
  }

  ///Move to the previous Form Step
  void prevStep() {
    if (state.currentStep! > 0) {
      state = state..currentStep = state.currentStep! - 1;
      state = ApplicationState(
        steps: state.steps,
        currentStep: state.currentStep,
        endSummary: state.endSummary,
        answers: state.answers,
      );
    }
  }

  ///Set a specific answer at [step] and [title] with [answer]
  ///
  /// - [answer] has to be a json acceptable object, for
  ///   example: string, number, date, lists, etc
  void setAnswer(int step, String title, dynamic answer) {
    state = state..answers!['steps'][step][title] = answer;
    state = ApplicationState(
      steps: state.steps,
      currentStep: state.currentStep,
      endSummary: state.endSummary,
      answers: state.answers,
    );
  }

  ///Set a specific image with given [image]
  void setImage(dynamic image) {
    // if th
    state = state..answers!['images[]'].add(image);
    state = ApplicationState(
      steps: state.steps,
      currentStep: state.currentStep,
      endSummary: state.endSummary,
      answers: state.answers,
    );
  }
}

final applyStateProvider =
    StateNotifierProvider<ApplyStateNotifier, ApplicationState>(
  (ref) => ApplyStateNotifier(ref),
);

final loadStepsProvider = FutureProvider<void>((ref) async {
  // final loan = ref.watch(loanDataProvider);
  return ref
      .read(applyStateProvider.notifier)
      .loadSteps(ref.watch(loanDataProvider)!.id!);
});

final loanDataProvider = StateProvider<LoanData?>((ref) {
  return null;
});
