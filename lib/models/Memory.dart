class Memory {
  String _value = '0';
  final _memory = [0.0, 0.0];
  int _memoryIndex = 0;
  String _operation;
  bool _wipeValue = false;
  String _lastCommand;

  static const operations = const ['%', '÷', 'X', '-', '+', '='];

  String get value {
    return _value;
  }

  String get operation {
    return _operation;
  }

  void command(String command) {
    if (_isReplacingOperation(command)) {
      _operation = command;
      return;
    }

    if (command == 'CE') {
      _allClear();
    } else if (operations.contains(command)) {
      _setOperation(command);
    } else {
      _addDigit(command);
    }

    _lastCommand = command;
  }

  _isReplacingOperation(String command) {
    return operations.contains(_lastCommand) &&
        operations.contains(command) &&
        _lastCommand != '=' &&
        command != '=';
  }

  _setOperation(String newOperation) {
    bool isEqualSign = newOperation == '=';
    if (_memoryIndex == 0) {
      if (!isEqualSign) {
        _operation = newOperation;
        _memoryIndex = 1;
        _wipeValue = true;
      }
    } else {
      _memory[0] = _calculate();
      _memory[1] = 0.0;
      _value = _memory[0].toString();
      _value = _value.endsWith('.0') ? _value.split('.')[0] : _value;

      _operation = isEqualSign ? null : newOperation;
      _memoryIndex = isEqualSign ? 0 : 1;
    }
    _wipeValue = true;
  }

  _addDigit(String digit) {
    final isDot = digit == '.';
    final wipeValue = (_value == "0" && !isDot) || _wipeValue;
    if (isDot && _value.contains('.') && !wipeValue) {
      return;
    }
    final emptyValue = isDot ? '0' : '';
    final currentValue = wipeValue ? emptyValue : _value;
    _value = currentValue + digit;
    _wipeValue = false;
    _memory[_memoryIndex] = double.tryParse(_value) ?? 0;
  }

  void _allClear() {
    _value = '0';
    _memory.setAll(0, [0.0, 0.0]);
    _operation = null;
    _memoryIndex = 0;
    _wipeValue = false;
  }

  _calculate() {
    switch (_operation) {
      case '%':
        return _memory[0] % _memory[1];
      case '÷':
        return _memory[0] / _memory[1];
      case 'X':
        return _memory[0] * _memory[1];
      case '-':
        return _memory[0] - _memory[1];
      case '+':
        return _memory[0] + _memory[1];
      default:
        return _memory[0];
    }
  }
}
