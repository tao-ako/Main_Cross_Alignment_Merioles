# Merioles - Alignment Demo

A Flutter teaching app showing all six `MainAxisAlignment` values and all five
`CrossAxisAlignment` values in both `Row` and `Column` widgets. Switch between
the Main Axis and Cross Axis tabs, then scroll through the labeled examples.

The Row baseline example uses differently sized text with an alphabetic
baseline. Flutter applies baseline positioning to horizontal Rows; the Column
baseline example explains that Flutter lays its children out at the start of
the cross axis.

## Run

```shell
flutter pub get
flutter run
```

Run the widget tests and analyzer with:

```shell
flutter test
flutter analyze
```

## Screenshots

The `screenshots/` directory contains emulator captures for all 22
demonstrations. `phone_running.png` is an additional capture from the connected
Android phone.
