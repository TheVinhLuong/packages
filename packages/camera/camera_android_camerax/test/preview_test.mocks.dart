// Mocks generated by Mockito 5.4.0 from annotations
// in camera_android_camerax/test/preview_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:camera_android_camerax/src/camerax_library.g.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

import 'test_camerax_library.g.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResolutionInfo_0 extends _i1.SmartFake
    implements _i2.ResolutionInfo {
  _FakeResolutionInfo_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TestInstanceManagerHostApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestInstanceManagerHostApi extends _i1.Mock
    implements _i3.TestInstanceManagerHostApi {
  MockTestInstanceManagerHostApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [TestPreviewHostApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestPreviewHostApi extends _i1.Mock
    implements _i3.TestPreviewHostApi {
  MockTestPreviewHostApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void create(
    int? identifier,
    int? rotation,
    _i2.ResolutionInfo? targetResolution,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #create,
          [
            identifier,
            rotation,
            targetResolution,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  int setSurfaceProvider(int? identifier) => (super.noSuchMethod(
        Invocation.method(
          #setSurfaceProvider,
          [identifier],
        ),
        returnValue: 0,
      ) as int);
  @override
  void releaseFlutterSurfaceTexture() => super.noSuchMethod(
        Invocation.method(
          #releaseFlutterSurfaceTexture,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.ResolutionInfo getResolutionInfo(int? identifier) => (super.noSuchMethod(
        Invocation.method(
          #getResolutionInfo,
          [identifier],
        ),
        returnValue: _FakeResolutionInfo_0(
          this,
          Invocation.method(
            #getResolutionInfo,
            [identifier],
          ),
        ),
      ) as _i2.ResolutionInfo);
}
