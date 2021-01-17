// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_add_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LineAddViewModel on _LineAddViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_LineAddViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fetchLineAddSeviceAsyncAction =
      AsyncAction('_LineAddViewModelBase.fetchLineAddSevice');

  @override
  Future<void> fetchLineAddSevice() {
    return _$fetchLineAddSeviceAsyncAction
        .run(() => super.fetchLineAddSevice());
  }

  final _$_LineAddViewModelBaseActionController =
      ActionController(name: '_LineAddViewModelBase');

  @override
  void isLoadingChange() {
    final _$actionInfo = _$_LineAddViewModelBaseActionController.startAction(
        name: '_LineAddViewModelBase.isLoadingChange');
    try {
      return super.isLoadingChange();
    } finally {
      _$_LineAddViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
