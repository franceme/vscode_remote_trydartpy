# Links

## Pre-loaded / General Info
* [Static Website Shock](https://staticshock.io/guides/quickstart/)
* [DartPy - Interacting with python](https://pub.dev/packages/dartpy)
* [Dart Samples](https://github.com/dart-lang/samples)
* [Dart Dev Tools](https://dart.dev/tools)
* [Deploy](https://dart.dev/tools/dart-compile)
    * [Cross Compile](https://dart.dev/tools/dart-compile#cross-compilation-exe)
* [WebApp Deploy](http://dart.dev/web/deployment)
* [CLI](https://dart.dev/tutorials/server/cmdline)

## Online Samples
* [DartPad](https://dartpad.dev/)
* [DartPad with GPU Support](https://dartpad.thermion.dev/)

## Flutter Aide...maybe later
* [Flutter && Go](https://github.com/csnewman/flutter-go-bridge/tree/master)
* [Referenced Flutterized Container](https://gist.github.com/chardskarth/2f7f5eb0476001e84cc571d3511b7119)


## Context-Like

### [Example 1](https://stackoverflow.com/questions/59427601/what-is-equivalent-to-python-with-statement-in-dart)

```dart
void clientScope(void Function(Client) callback) {
  // Initialize your client
  final client = Client.initialize();

  // Acts as the body of a 'with' statement
  callback(client);

  // Perform any cleanup
  client.cleanup();
}
```

```dart
clientScope((Client app) {
  app.doSomething();
});
```

### Example 2

```dart
void main() {
  File? file;
  try {
    file = File('example.txt');
    file.writeAsStringSync('Hello, Dart!');
    print('File written successfully.');
  } finally {
    file?.deleteSync(); // Ensure file is deleted, even if an error occurred
    print('Cleanup complete.');
  }
}
```