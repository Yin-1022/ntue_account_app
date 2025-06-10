import '../model/data.dart';

class DataService {
  final List<Data> _datas = [
    Data(
        dateTime: DateTime(
            2025,
            01,
            03
        ),
        title: '牛肉麵',
        type: 'food',
        dollar: 200
    ),
    Data(
        dateTime: DateTime(
        2025,
        01,
        04
    ),
        title: '紅茶',
        type: 'drink',
        dollar: 100
    )
  ];

  List<Data> get datas => _datas;
}