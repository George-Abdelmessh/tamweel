//Represents the different ways a user may be asked to enter information
//in the application process. This is used to determine which widget to
//display in the application process.
import 'dart:convert';

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
    await Future.delayed(const Duration(seconds: 2));
    const myJson =
        '{"loanTitle":"مستورة","loanId":1,"image":"https://picsum.photos/1000","endSummary":true,"steps":[{"title":"طلب الحصول على قرض مستورة ","description":"قومي بإدخال بياناتك الشخصية (اسمك الثلاثي ورقم البطاقة) ","form":[{"title":"الاسم الثلاثي","type":0},{"title":"الرقم القومي","type":3},{"title":"فرع البنك","type":24,"options":[{"القاهرة":["القاهرة الجديدة","الزمالك"]},{"الجيزة":["القاهرة الجديدة","الزمالك"]}]}]},{"title":"إضافة أشخاص آخرين للقرض ","description":"لو عايزة تشاركي أشخاص في القرض إختاري (نعم) قومي بإدخال بيانات كل الأشخاص المشاركين في القرض (الاسم الثلاثي والرقم القومي)لو عايزة تضيفي أشخاص زيادة قومي بالضغط على إضافة ","form":[{"title":"هل ترغب في إضافة أشخاص آخرين الى طلب القرض؟","type":12,"options":["نعم","لا"],"childEnable":0,"child":{"title":"","type":25,"option":"نعم"}}]},{"title":"حساب قيمة القرض","description":"","form":[{"title":"نوع القرض","type":13,"options":["طاقة متجددة","قرض صناعي","قرض زراعي"]},{"title":"مبلغ القرض","type":21,"max":30000,"min":4000},{"title":"مدة السداد","type":12,"options":["سنة","سنتين"]},{"type":26,"options":["سنة","سنتين"]}]},{"title":"باقي البيانات الشخصية ","description":"قومي بإدخال جميع البيانات الشخصية في حالة عدم معرفة الرقم التأميني , رجاء عدم كتابة أي شئ في المساحة قومي بإدخال جميع البيانات الخاصة بالمشروع","form":[{"title":"تليفون محمول","type":2},{"title":"تليفون أرضي","type":10},{"title":"الرقم التأميني","type":10},{"title":"الحالة الإجتماعية","type":7},{"title":"عنوان مقدم الطلب (طبقا للرقم القومي) ","type":5},{"title":"عنوان مقدم الطلب (العنوان الفعلي) ","type":12,"options":["نفس العنوان","عنوان آخر"],"childEnable":1,"child":{"title":"العنوان الفعلي","type":5}},{"title":"وصف المشروع","type":16},{"title":"هل لديك سابق خبرة ","type":12,"options":["نعم","لا"],"childEnable":0,"child":{"title":"عدد سنوات الخبرة","type":9}},{"title":"مقر المشروع","type":12,"options":["تمليك","ايجار"]},{"title":"موقع مقر المشروع","type":5}]},{"title":"إختيار ضمان القرض ","description":"قومي بتحديد أنسب طريقة لضمان قرضك ","form":[{"title":"نوع الضامن","type":27,"options":["شخصي","تحويل راتب","تحويل معاش"],"map":[{"1":[{"title":"الاسم الثلاثي","type":0},{"title":"الرقم القومي","type":3}]},{"2":[{"title":"قيمة المرتب الشهري ","type":10},{"title":"جهة العمل","type":9}]},{"3":[{"title":"قيمة المعاش ","type":10}]}]}]},{"title":"إرفاق المستندات الشخصية (الخاصة بالقرض) ","description":"قومي بإرفاق جميع المستندات المطلوبة بعد التأكد من أنها سارية ","form":[{"title":"صورة بطاقة الرقم القومي الأمامية ","type":22},{"title":"صورة بطاقة الرقم القومي الخلفيه ","type":22},{"title":"إيصال مرافق خاص بمحل الإقامة ","type":22},{"title":"عقد إيجار/تمليك مقر المشروع ","type":22},{"title":"عرض أسعار مستلزمات المشروع ","type":22}]}]}';
    final jsonMap = json.decode(myJson);
    state = ApplicationState(
      //ignore_for_file: avoid_dynamic_calls
      //ignore: argument_type_not_assignable 
      loanId: jsonMap['loanId'],
      //ignore: argument_type_not_assignable
      image: jsonMap['image'],
      //ignore: argument_type_not_assignable
      loanTitle: jsonMap['loanTitle'],
      //ignore: argument_type_not_assignable
      steps: jsonMap['steps'],
    );
  }

  ///Move to the next Form Step
  void nextStep() {
    if (state.currentStep! < state.steps.length - 1) {
      state = state..currentStep = state.currentStep! + 1;
      state = ApplicationState(
        loanId: state.loanId,
        image: state.image,
        loanTitle: state.loanTitle,
        steps: state.steps,
        currentStep: state.currentStep,
        endSummary: state.endSummary,
      );
      // print(state.currentStep);
    }
  }

  ///Move to the previous Form Step
  void prevStep() {
    if (state.currentStep! > 0) {
      state = state..currentStep = state.currentStep! - 1;
      state = ApplicationState(
        loanId: state.loanId,
        image: state.image,
        loanTitle: state.loanTitle,
        steps: state.steps,
        currentStep: state.currentStep,
        endSummary: state.endSummary,
      );
    }
  }

  ///Set a specific answer at [step] and [index] with [answer]
  ///
  /// - [answer] has to be a json acceptable object, for
  ///   example: string, number, date, lists, etc
  void setAnswer(int step, String index, dynamic answer) {
    state = state..answers![step][index] = answer;
    state = ApplicationState(
      loanId: state.loanId,
      image: state.image,
      loanTitle: state.loanTitle,
      steps: state.steps,
      currentStep: state.currentStep,
      endSummary: state.endSummary,
      answers: state.answers,
    );
  }
}

final applyStateProvider =
    StateNotifierProvider<ApplyStateNotifier, ApplicationState>(
  (ref) => ApplyStateNotifier(),
);

final loadStepsProvider = FutureProvider<void>((ref) async {
  return ref.read(applyStateProvider.notifier).loadSteps();
});
