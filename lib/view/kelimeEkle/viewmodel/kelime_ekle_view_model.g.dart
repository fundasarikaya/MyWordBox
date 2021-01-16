// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelime_ekle_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$KelimeEkleViewModel on _KelimeEkleViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_KelimeEkleViewModelBase.isLoading');

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

  final _$fetchKelimeEkleSeviceAsyncAction =
      AsyncAction('_KelimeEkleViewModelBase.fetchKelimeEkleSevice');

  @override
  Future<void> fetchKelimeEkleSevice() {
    return _$fetchKelimeEkleSeviceAsyncAction
        .run(() => super.fetchKelimeEkleSevice());
  }

  final _$_KelimeEkleViewModelBaseActionController =
      ActionController(name: '_KelimeEkleViewModelBase');

  @override
  void isLoadingChange() {
    final _$actionInfo = _$_KelimeEkleViewModelBaseActionController.startAction(
        name: '_KelimeEkleViewModelBase.isLoadingChange');
    try {
      return super.isLoadingChange();
    } finally {
      _$_KelimeEkleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
