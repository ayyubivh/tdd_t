import 'dart:io';

String fixture(String name) =>
    File('test/mash/fixture/$name').readAsStringSync();
