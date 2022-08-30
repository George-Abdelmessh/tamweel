# Tamweel Misr

A Flutter project for the Tamweel app, retaining most functionality of the tamweel [website](https://tamweelmisr.com). Through the app, users can browse Loans and financing programs, which are offered by multiple banks. Users can also search for loans and financing programs, and filter them by categories. Once the user decides to apply for a loan or financing program, they can fill out an application form and submit it to the bank. The loan application form is a multi-page form, with each page containing a set of questions.

## Features

#### Loan Search

- Search for loans and financing programs
- Filter by categories
- View details of each loan or financing program
- Apply for a loan or financing program

#### Loan Application

- Fill out an application form
- Submit the application to the bank

#### Profile

- Log in or sign up
- View and edit profile
- Find information about our Company
- Contact support

### How to run the app

To get a local copy up and running follow these simple steps:
- Clone the repo
- open the project in your IDE
- in a terminal, cd to the project directory
- run the following command to install the dependencies
```
flutter pub get
```
- run the following command to run the app and clear animation jank
```
flutter run --release --purge-persistent-cache
```
- to rebuild freezed models, run the following command
```
flutter pub run build_runner build --delete-conflicting-outputs
```

### Built With

- [Dio](https://pub.dev/packages/dio)
- [hooks_riverpod](https://pub.dev/packages/hooks_riverpod)
- [freezed](https://pub.dev/packages/freezed)
- [flutter_native_splash ](https://pub.dev/packages/flutter_native_splash)
