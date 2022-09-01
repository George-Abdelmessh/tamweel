///Tracks the state of the application form
///
/// - [currentStep] is the current step of the form
/// - [steps] is the list of steps in the form
/// - [endSummary] is wether to show summary at end or not
/// - [loanId] is the unique id of the loan which user is applyin for
/// - [loanTitle] name of the said loan
/// - [image] is the image url of the loan
/// - [answers] is the list to be populated with user answers
class ApplicationState {
  ///Create a new instance of the ApplicationState class

  ApplicationState({
    required this.steps,
    this.currentStep = 0,
    this.endSummary = true,
    this.answers,
  }) {
    answers ??= List.filled(steps.length, {});
  }

  int? currentStep = 0;
  bool? endSummary = true;
  final List<dynamic> steps;
  List<Map<String, dynamic>>? answers;

  // //copy with method
  // ApplicationState copyWith({
  //   int? currentStep,
  //   bool? endSummary,
  //   int? loanId,
  //   String? loanTitle,
  //   String? image,
  //   List<Map<String, dynamic>>? steps,
  //   List<Map<String, dynamic>>? answers,
  // }) {
  //   return ApplicationState(
  //     currentStep: currentStep ?? this.currentStep,
  //     endSummary: endSummary ?? this.endSummary,
  //     loanId: loanId ?? this.loanId,
  //     loanTitle: loanTitle ?? this.loanTitle,
  //     image: image ?? this.image,
  //     steps: steps ?? this.steps,
  //     answers: answers ?? this.answers,
  //   );
  // }
}
