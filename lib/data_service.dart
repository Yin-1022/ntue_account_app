import 'data.dart';

class DataService {
  final List<Data> _datas = [
    Data(
        dateTime: DateTime(
            2025,
            01,
            03,
            0,
            0,
            0,
            0,
            0),
        title: '牛肉麵',
        type: 'food',
        dollar: 200
    ),
    Data(dateTime: DateTime(
        2025,
        01,
        04,
        0,
        0,
        0,
        0,
        0),
        title: '',
        type: '',
        dollar: 200
    )
  ];

  List<Data> get datas => _datas;
}