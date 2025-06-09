import "../model/data.dart";
class DataService{
  final List <Data> _data = [
    Data(
        title: 'cake',
        type: 'food',
        dateTime: DateTime.now(),
        dollar:100
    ),
  ];

  List <Data> get data => _data;
  int updateMonthlyExpenses({required String year, required String month}){
    int dollar=0;
    for (int i = 0; i < _data.length; i++) {
      String entryYear = _data[i].dateTime.year.toString();
      String entryMonth = _data[i].dateTime.month.toString();
      int entryDollar = _data[i].dollar;
      if(entryYear==year && entryMonth==month && entryDollar<0){
        dollar=dollar+entryDollar;
      }
    }
    return dollar;
  }
  int updateMonthlyIncome({required String year, required String month}){
    int dollar=0;
    for (int i = 0; i < _data.length; i++) {
      String entryYear = _data[i].dateTime.year.toString();
      String entryMonth = _data[i].dateTime.month.toString();
      int entryDollar = _data[i].dollar;
      if(entryYear==year && entryMonth==month && entryDollar>0){
        dollar=dollar+entryDollar;
      }
    }
    return dollar;
  }
}

