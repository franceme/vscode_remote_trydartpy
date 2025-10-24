import "dart:ffi";

import "package:dartpy/dartpy.dart";
import "package:ffi/ffi.dart";

void main(final List<String> args) {
  print("Hello, World!");
  dartpyc.Py_Initialize();
  const String python = '''
from time import time, ctime
print("Today is", ctime(time()))
''';
  final Pointer<Utf8> pystring = python.toNativeUtf8();
  dartpyc.PyRun_SimpleString(pystring.cast<Char>());
  malloc.free(pystring);
  print(dartpyc.Py_FinalizeEx());
}
