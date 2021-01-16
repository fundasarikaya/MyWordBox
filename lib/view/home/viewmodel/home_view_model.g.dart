// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  Computed<HomeModel> _$sliderHomeComputed;

  @override
  HomeModel get sliderHome =>
      (_$sliderHomeComputed ??= Computed<HomeModel>(() => super.sliderHome,
              name: '_HomeViewModelBase.sliderHome'))
          .value;

  final _$likeItemsAtom = Atom(name: '_HomeViewModelBase.likeItems');

  @override
  List<String> get likeItems {
    _$likeItemsAtom.reportRead();
    return super.likeItems;
  }

  @override
  set likeItems(List<String> value) {
    _$likeItemsAtom.reportWrite(value, super.likeItems, () {
      super.likeItems = value;
    });
  }

  final _$homeModelsAtom = Atom(name: '_HomeViewModelBase.homeModels');

  @override
  List<HomeModel> get homeModels {
    _$homeModelsAtom.reportRead();
    return super.homeModels;
  }

  @override
  set homeModels(List<HomeModel> value) {
    _$homeModelsAtom.reportWrite(value, super.homeModels, () {
      super.homeModels = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_HomeViewModelBase.isLoading');

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

  final _$getListAllAsyncAction = AsyncAction('_HomeViewModelBase.getListAll');

  @override
  Future<void> getListAll() {
    return _$getListAllAsyncAction.run(() => super.getListAll());
  }

  final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase');

  @override
  void onLikeItemPressed(String id) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.onLikeItemPressed');
    try {
      return super.onLikeItemPressed(id);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _changeLoading() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
likeItems: ${likeItems},
homeModels: ${homeModels},
isLoading: ${isLoading},
sliderHome: ${sliderHome}
    ''';
  }
}
