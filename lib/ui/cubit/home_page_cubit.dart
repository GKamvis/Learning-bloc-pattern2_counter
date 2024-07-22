import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/data/repository/counter_repo.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(0);
  var countRepo = CounterRepository();
  void increment() {
    emit(countRepo.incrment());
  }
    void decrement() {
    emit(countRepo.decrement());
  }
}
