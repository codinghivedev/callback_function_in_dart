import 'dart:math';

class DataProcessor {

  void downloadProgress({Function(int) callback}) {

    for (int i = 0; i < 10; i++) {
      if(callback!=null)callback(i);
    }
  }

  void dataSize({Function(double,String) callback}) {

    var random = Random.secure();
    if (callback != null) callback(random.nextDouble(),'GB');
  }

}
