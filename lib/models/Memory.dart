class Memory {
  String _value = '0';

  String get value {
    return _value;
  }

  void command(String command){
    _value += command;
  }

  void allClear(){
    _value = '0';
  }
}