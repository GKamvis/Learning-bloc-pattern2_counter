class CounterRepository {
  int counter = 0;
  int incrment() {
    return counter++;
  }
    int decrement() {
    return counter--;
  }
}
