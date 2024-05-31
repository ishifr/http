// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: doc_directive_unknown
// ignore_for_file: file_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_cast
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name
// ignore_for_file: use_super_parameters

import "dart:isolate" show ReceivePort;
import "dart:ffi" as ffi;
import "package:jni/internal_helpers_for_jnigen.dart";
import "package:jni/jni.dart" as jni;

import "Call.dart" as call_;

import "Response.dart" as response_;

/// from: okhttp3.Callback
class Callback extends jni.JObject {
  @override
  late final jni.JObjType<Callback> $type = type;

  Callback.fromReference(
    jni.JReference reference,
  ) : super.fromReference(reference);

  static final _class = jni.JClass.forName(r"okhttp3/Callback");

  /// The type which includes information such as the signature of this class.
  static const type = $CallbackType();
  static final _id_onFailure = _class.instanceMethodId(
    r"onFailure",
    r"(Lokhttp3/Call;Ljava/io/IOException;)V",
  );

  static final _onFailure = ProtectedJniExtensions.lookup<
          ffi.NativeFunction<
              jni.JThrowablePtr Function(
                  ffi.Pointer<ffi.Void>,
                  jni.JMethodIDPtr,
                  ffi.VarArgs<
                      (
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>
                      )>)>>("globalEnv_CallVoidMethod")
      .asFunction<
          jni.JThrowablePtr Function(ffi.Pointer<ffi.Void>, jni.JMethodIDPtr,
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public abstract void onFailure(okhttp3.Call call, java.io.IOException iOException)
  void onFailure(
    call_.Call call,
    jni.JObject iOException,
  ) {
    _onFailure(reference.pointer, _id_onFailure as jni.JMethodIDPtr,
            call.reference.pointer, iOException.reference.pointer)
        .check();
  }

  static final _id_onResponse = _class.instanceMethodId(
    r"onResponse",
    r"(Lokhttp3/Call;Lokhttp3/Response;)V",
  );

  static final _onResponse = ProtectedJniExtensions.lookup<
          ffi.NativeFunction<
              jni.JThrowablePtr Function(
                  ffi.Pointer<ffi.Void>,
                  jni.JMethodIDPtr,
                  ffi.VarArgs<
                      (
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>
                      )>)>>("globalEnv_CallVoidMethod")
      .asFunction<
          jni.JThrowablePtr Function(ffi.Pointer<ffi.Void>, jni.JMethodIDPtr,
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public abstract void onResponse(okhttp3.Call call, okhttp3.Response response)
  void onResponse(
    call_.Call call,
    response_.Response response,
  ) {
    _onResponse(reference.pointer, _id_onResponse as jni.JMethodIDPtr,
            call.reference.pointer, response.reference.pointer)
        .check();
  }

  /// Maps a specific port to the implemented interface.
  static final Map<int, $CallbackImpl> _$impls = {};
  ReceivePort? _$p;

  static jni.JObjectPtr _$invoke(
    int port,
    jni.JObjectPtr descriptor,
    jni.JObjectPtr args,
  ) {
    return _$invokeMethod(
      port,
      $MethodInvocation.fromAddresses(
        0,
        descriptor.address,
        args.address,
      ),
    );
  }

  static final ffi.Pointer<
          ffi.NativeFunction<
              jni.JObjectPtr Function(
                  ffi.Uint64, jni.JObjectPtr, jni.JObjectPtr)>>
      _$invokePointer = ffi.Pointer.fromFunction(_$invoke);

  static ffi.Pointer<ffi.Void> _$invokeMethod(
    int $p,
    $MethodInvocation $i,
  ) {
    try {
      final $d = $i.methodDescriptor.toDartString(releaseOriginal: true);
      final $a = $i.args;
      if ($d == r"onFailure(Lokhttp3/Call;Ljava/io/IOException;)V") {
        _$impls[$p]!.onFailure(
          $a[0].castTo(const call_.$CallType(), releaseOriginal: true),
          $a[1].castTo(const jni.JObjectType(), releaseOriginal: true),
        );
        return jni.nullptr;
      }
      if ($d == r"onResponse(Lokhttp3/Call;Lokhttp3/Response;)V") {
        _$impls[$p]!.onResponse(
          $a[0].castTo(const call_.$CallType(), releaseOriginal: true),
          $a[1].castTo(const response_.$ResponseType(), releaseOriginal: true),
        );
        return jni.nullptr;
      }
    } catch (e) {
      return ProtectedJniExtensions.newDartException(e.toString());
    }
    return jni.nullptr;
  }

  factory Callback.implement(
    $CallbackImpl $impl,
  ) {
    final $p = ReceivePort();
    final $x = Callback.fromReference(
      ProtectedJniExtensions.newPortProxy(
        r"okhttp3.Callback",
        $p,
        _$invokePointer,
      ),
    ).._$p = $p;
    final $a = $p.sendPort.nativePort;
    _$impls[$a] = $impl;
    $p.listen(($m) {
      if ($m == null) {
        _$impls.remove($p.sendPort.nativePort);
        $p.close();
        return;
      }
      final $i = $MethodInvocation.fromMessage($m as List<dynamic>);
      final $r = _$invokeMethod($p.sendPort.nativePort, $i);
      ProtectedJniExtensions.returnResult($i.result, $r);
    });
    return $x;
  }
}

abstract interface class $CallbackImpl {
  factory $CallbackImpl({
    required void Function(call_.Call call, jni.JObject iOException) onFailure,
    required void Function(call_.Call call, response_.Response response)
        onResponse,
  }) = _$CallbackImpl;

  void onFailure(call_.Call call, jni.JObject iOException);
  void onResponse(call_.Call call, response_.Response response);
}

class _$CallbackImpl implements $CallbackImpl {
  _$CallbackImpl({
    required void Function(call_.Call call, jni.JObject iOException) onFailure,
    required void Function(call_.Call call, response_.Response response)
        onResponse,
  })  : _onFailure = onFailure,
        _onResponse = onResponse;

  final void Function(call_.Call call, jni.JObject iOException) _onFailure;
  final void Function(call_.Call call, response_.Response response) _onResponse;

  void onFailure(call_.Call call, jni.JObject iOException) {
    return _onFailure(call, iOException);
  }

  void onResponse(call_.Call call, response_.Response response) {
    return _onResponse(call, response);
  }
}

final class $CallbackType extends jni.JObjType<Callback> {
  const $CallbackType();

  @override
  String get signature => r"Lokhttp3/Callback;";

  @override
  Callback fromReference(jni.JReference reference) =>
      Callback.fromReference(reference);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($CallbackType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($CallbackType) && other is $CallbackType;
  }
}
