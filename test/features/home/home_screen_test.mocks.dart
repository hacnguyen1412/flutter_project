// Mocks generated by Mockito 5.3.2 from annotations
// in flutter_project/test/features/home/home_screen_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_project/core/realm/app_realm.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:realm/realm.dart' as _i2;

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

class _FakeConfiguration_0 extends _i1.SmartFake implements _i2.Configuration {
  _FakeConfiguration_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AppRealm].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppRealm extends _i1.Mock implements _i3.AppRealm {
  MockAppRealm() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Configuration get config => (super.noSuchMethod(
        Invocation.getter(#config),
        returnValue: _FakeConfiguration_0(
          this,
          Invocation.getter(#config),
        ),
      ) as _i2.Configuration);
  @override
  set realm(_i2.Realm? _realm) => super.noSuchMethod(
        Invocation.setter(
          #realm,
          _realm,
        ),
        returnValueForMissingStub: null,
      );
  @override
  void add(
    _i2.RealmObject? object, {
    bool? update = true,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #add,
          [object],
          {#update: update},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addAll(
    List<_i2.RealmObject>? objects, {
    bool? update = true,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #addAll,
          [objects],
          {#update: update},
        ),
        returnValueForMissingStub: null,
      );
  @override
  List<T> getList<T extends _i2.RealmObject>() => (super.noSuchMethod(
        Invocation.method(
          #getList,
          [],
        ),
        returnValue: <T>[],
      ) as List<T>);
  @override
  void deleteAll<T extends _i2.RealmObject>() => super.noSuchMethod(
        Invocation.method(
          #deleteAll,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void deleteMany<T extends _i2.RealmObject>(List<T>? items) =>
      super.noSuchMethod(
        Invocation.method(
          #deleteMany,
          [items],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void delete<T extends _i2.RealmObject>({
    T? object,
    String? primaryKey,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #delete,
          [],
          {
            #object: object,
            #primaryKey: primaryKey,
          },
        ),
        returnValueForMissingStub: null,
      );
}
