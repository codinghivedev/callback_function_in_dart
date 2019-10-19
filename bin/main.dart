import 'package:callback_function_in_dart/data_processor.dart';

main() {

  DataProcessor dataProcessor = DataProcessor();

  //****Callback with setter******************
  dataProcessor.setDataLinkListener(callback:(String filePath){
    print('download filePath : $filePath');

  });
  dataProcessor.getDataLink();
  //*******************************************

  //**** put Callback directly******************
  dataProcessor.downloadProgress(callback: (int progress) {
    print('download progress : $progress');
  });

  dataProcessor.dataSize(callback: (double data,String unit) {
    print('DataSize : $data , unit : $unit');
  });
  //*******************************************

}
