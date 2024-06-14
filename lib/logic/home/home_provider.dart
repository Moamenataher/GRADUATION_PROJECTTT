import 'package:flutter/material.dart';
import 'package:graduation_project/helpers/error/error_handler.dart';
import 'package:graduation_project/helpers/network_services.dart';
import 'package:graduation_project/injection_container.dart';

enum HomeStatus {initial, loading, failure, loggedOut}

class HomeProvider extends ChangeNotifier{
  HomeStatus _status = HomeStatus.initial;
  HomeStatus get status => _status;

  late String? errorMessage;

  Future<void> logout() async{
    _status = HomeStatus.loading;
    notifyListeners();

    try{
      await injector<ApiService>().logout();
      _status = HomeStatus.loggedOut;
      notifyListeners();

    }catch (error){
      errorMessage = ErrorHandler.handle(error).apiErrorModel.message;
      _status = HomeStatus.failure;
      notifyListeners();

      resetState();
    }
  }


  void resetState() {
    _status = HomeStatus.initial;
    errorMessage = null;
    notifyListeners();
  }

}