// Copyright (c) 2025, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:web_socket/web_socket.dart';
import 'package:web_socket_conformance_tests/web_socket_conformance_tests.dart';

class MyWebSocketImplementation implements WebSocket {
  static Future<MyWebSocketImplementation> connect(Uri uri,
          {Iterable<String>? protocols}) async =>
      MyWebSocketImplementation();

  @override
  Future<void> close([int? code, String? reason]) => throw UnimplementedError();

  @override
  Stream<WebSocketEvent> get events => throw UnimplementedError();

  @override
  void sendBytes(Uint8List b) => throw UnimplementedError();

  @override
  void sendText(String s) => throw UnimplementedError();

  @override
  String get protocol => throw UnimplementedError();
}

void main() {
  group('client conformance tests', () {
    testAll(MyWebSocketImplementation.connect);
  });
}
