
**Faker Fetcher Exam**

Welcome to the Faker Fetcher Exam project, a Flutter application designed to demonstrate proficiency in utilizing external APIs and handling common development challenges.

**Getting Started**

Before proceeding, ensure that you have the latest version of Flutter installed or specifically version 3.19.2.

Follow these steps to set up the project:

Run the following commands in your terminal:
- flutter pub get
- dart run build_runner build
- Launch the application by connecting to a physical device or emulator.

However, note that there are currently some issues with the latest version of Flutter (3.19.2) that may prevent the application from running smoothly. Please refer to the "Issues" section below for more information and temporary fixes.

**Issues**

Issue 1: Unable to Generate Package Graph
When attempting to run the application, you may encounter an error message stating "Bad state: Unable to generate package graph, no D:\android\<YOUR_APP_NAME>\.dart_tool\flutter_gen\pubspec.yaml found."

This issue arises due to a problem with the .dart_tool directory not correctly locating the pubspec.yaml file.

Temporary Fix:
To temporarily address this issue, follow these steps:

Run the following commands in your terminal:
flutter pub get
flutter clean
dart run build_runner build
If prompted with options during the dart run build_runner build command, choose the option to delete (usually by typing '1' or selecting 'delete').

Issue 2: Image Rendering Error
The application relies on Fakerapi, which utilizes placeimg.com to generate user profile images. However, issues arise when attempting to render these images on the UI.
We have verifiewd that placeimg.com is already been deprecated and does not generate images anymore, hence the issue of blank or unknown file being sent to the faker api.

To temporarily address this issue, further investigation is required from the Fakerapi side to understand the nature of the problem and then we can provide appropriate handling on our UI.

For updates on this issue, refer to the bug ticket: flutter_cached_network_image/issues/491

Conclusion
While the project may encounter some challenges due to external dependencies and issues with the latest Flutter version, it provides an excellent opportunity to explore debugging techniques and temporary workarounds. Your feedback and contributions towards resolving these issues are greatly appreciated.

Thank you for your interest in the Faker Fetcher Exam project.

Sincerely,
Gray

My profile Info : https://github.com/orcecso
