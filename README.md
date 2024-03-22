# faker_fectcher_exam

A new Flutter project.

## Getting Started

make sure you have latest flutter or this version 3.19.2

-read comments below on what to do next 

## Issues

there are issues currently happening on latest flutter: currently this is built using
flutter : 3.19.2

Normally to start this application, you will need to do as follows:

at first run : 
- flutter run pub get
- dart run build_runner build
- run application ( connect to physical device first or emulator )

then an issue will appear on logs preventing you to run : Bad state: Unable to generate package graph, no `D:\android\<YOUR_APP_NAME>\.dart_tool\flutter_gen\pubspec.yaml` found.

this is an issue with .darttool that shows it cannot find pubspec.yaml file( but its on the root folder not inside .darttool).

## Temporary fix
instead run it like this:
flutter run pub get
flutter clean 
dart run build_runner build ( if ask for 3 options, delete cancel or list, just use delete or type 1 )

termporary workaround if you experience this issue
running app on user side no problem , generating apk, tested on creating flutter web as well, no issues i found yet, but for dev in debugging or adding new feature, this happens often



another issue :
Fakerapi is using placeimg.com to generate its images for the users profile, and because of that issues are occuring such as we cannot 
render any image on our UI, i cannot find any docs that shows what type of file, or is it null or empty to handle the error, i already placed an error handler but needs further investigation from fakerapi side to properly address and handle it on our ui. 

bug ticket : https://github.com/Baseflow/flutter_cached_network_image/issues/491

