import 'package:callback_function_in_dart/data_processor.dart';

main() {

  DataProcessor dataProcessor = DataProcessor();

  dataProcessor.downloadProgress(callback: (int progress) {
    print('download progress : $progress');
  });

  dataProcessor.dataSize(callback: (double data,String unit) {
    print('DataSize : $data , unit : $unit');
  });

}
