import 'dart:math';

class DataProcessor {

  void downloadProgress({Function(int) callback}) {

    for (int progress = 0; progress < 10; progress++) {
      if(callback!=null)callback(progress);
    }
  }

  void dataSize({Function(double,String) callback}) {

    var random = Random.secure();
    if (callback != null) callback(random.nextDouble(),'GB');
  }

}
