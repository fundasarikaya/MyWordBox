// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LinesViewModel on _LinesViewModelBase, Store {
  final _$linesModelsAtom = Atom(name: '_LinesViewModelBase.linesModels');

  @override
  List<LineModel> get linesModels {
    _$linesModelsAtom.reportRead();
    return super.linesModels;
  }

  @override
  set linesModels(List<LineModel> value) {
    _$linesModelsAtom.reportWrite(value, super.linesModels, () {
      super.linesModels = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_LinesViewModelBase.isLoading');

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

  final _$getListAllAsyncAction = AsyncAction('_LinesViewModelBase.getListAll');

  @override
  Future<void> getListAll() {
    return _$getListAllAsyncAction.run(() => super.getListAll());
  }

  final _$_LinesViewModelBaseActionController =
      ActionController(name: '_LinesViewModelBase');

  @override
  void _changeLoading() {
    final _$actionInfo = _$_LinesViewModelBaseActionController.startAction(
        name: '_LinesViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_LinesViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
linesModels: ${linesModels},
isLoading: ${isLoading}
    ''';
  }
}
