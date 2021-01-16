// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelime_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$KelimeViewModel on _KelimeViewModelBase, Store {
  final _$kelimeModelsAtom = Atom(name: '_KelimeViewModelBase.kelimeModels');

  @override
  List<KelimeModel> get kelimeModels {
    _$kelimeModelsAtom.reportRead();
    return super.kelimeModels;
  }

  @override
  set kelimeModels(List<KelimeModel> value) {
    _$kelimeModelsAtom.reportWrite(value, super.kelimeModels, () {
      super.kelimeModels = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_KelimeViewModelBase.isLoading');

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

  final _$getListAllAsyncAction =
      AsyncAction('_KelimeViewModelBase.getListAll');

  @override
  Future<void> getListAll() {
    return _$getListAllAsyncAction.run(() => super.getListAll());
  }

  final _$_KelimeViewModelBaseActionController =
      ActionController(name: '_KelimeViewModelBase');

  @override
  void _changeLoading() {
    final _$actionInfo = _$_KelimeViewModelBaseActionController.startAction(
        name: '_KelimeViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_KelimeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
kelimeModels: ${kelimeModels},
isLoading: ${isLoading}
    ''';
  }
}
