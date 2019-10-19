import 'dart:math';

class DataProcessor {


  //First Way to implement ************By assigning callback function to Function field*******
  //Function field
  void Function(String) dataLinkCallBack;

  void getDataLink({Function(String) callback}) {

    dataLinkCallBack=callback;

    //Your getting link from server here

    //After getting link from server put into call back
    if (dataLinkCallBack != null) dataLinkCallBack('www.codinghive.dev');
  }







  //Second Way to implement**********Set data direct to call back**************
  void downloadProgress({Function(int) callback}) {

    for (int progress = 0; progress < 10; progress++) {
      //Do downloading here

      //put current progress into call back
      if(callback!=null)callback(progress);
    }
  }

  void dataSize({Function(double,String) callback}) {

    var random = Random.secure();
    //Get Data Size from server here

    //After getting size from server put into call back
    if (callback != null) callback(random.nextDouble(),'GB');
  }
  //*******************************************************


}
