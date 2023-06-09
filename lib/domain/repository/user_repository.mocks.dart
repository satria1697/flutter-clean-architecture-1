// Mocks generated by Mockito 5.3.2 from annotations
// in four/domain/repository/user_repository.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dio/dio.dart' as _i6;
import 'package:four/domain/model/mine_response.dart' as _i2;
import 'package:four/domain/model/user.dart' as _i5;
import 'package:four/domain/repository/user_repository.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

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

class _FakeMineResponse_0<T, R> extends _i1.SmartFake
    implements _i2.MineResponse<T, R> {
  _FakeMineResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UserRepositoryInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRepositoryInterface extends _i1.Mock
    implements _i3.UserRepositoryInterface {
  @override
  _i4.Future<_i2.MineResponse<_i5.User?, _i6.DioError?>> getData() =>
      (super.noSuchMethod(
        Invocation.method(
          #getData,
          [],
        ),
        returnValue:
            _i4.Future<_i2.MineResponse<_i5.User?, _i6.DioError?>>.value(
                _FakeMineResponse_0<_i5.User?, _i6.DioError?>(
          this,
          Invocation.method(
            #getData,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.MineResponse<_i5.User?, _i6.DioError?>>.value(
                _FakeMineResponse_0<_i5.User?, _i6.DioError?>(
          this,
          Invocation.method(
            #getData,
            [],
          ),
        )),
      ) as _i4.Future<_i2.MineResponse<_i5.User?, _i6.DioError?>>);
  @override
  _i4.Future<_i2.MineResponse<List<_i5.User>, _i6.DioError?>> getManyData() =>
      (super.noSuchMethod(
        Invocation.method(
          #getManyData,
          [],
        ),
        returnValue:
            _i4.Future<_i2.MineResponse<List<_i5.User>, _i6.DioError?>>.value(
                _FakeMineResponse_0<List<_i5.User>, _i6.DioError?>(
          this,
          Invocation.method(
            #getManyData,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.MineResponse<List<_i5.User>, _i6.DioError?>>.value(
                _FakeMineResponse_0<List<_i5.User>, _i6.DioError?>(
          this,
          Invocation.method(
            #getManyData,
            [],
          ),
        )),
      ) as _i4.Future<_i2.MineResponse<List<_i5.User>, _i6.DioError?>>);
}
