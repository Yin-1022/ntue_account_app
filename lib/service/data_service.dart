import "../model/data.dart";

class AccountService {
  final List<Account> _accounts = [
    Account(
      dateTime: DateTime(2025, 01, 03, 0, 0, 0, 0, 0),
      title: '牛肉麵',
      type: 'food',
      dollar: 200,
    ),
    Account(
      dateTime: DateTime(2025, 01, 04, 0, 0, 0, 0, 0),
      title: '',
      type: '',
      dollar: 200,
    ),
  ];

  List<Account> get accounts => _accounts;

  int updateMonthlyExpenses({required String year, required String month}) {
    int dollar = 0;
    for (int i = 0; i < _accounts.length; i++) {
      String entryYear = _accounts[i].dateTime.year.toString();
      String entryMonth = _accounts[i].dateTime.month.toString();
      int entryDollar = _accounts[i].dollar;
      if (entryYear == year && entryMonth == month && entryDollar < 0) {
        dollar = dollar + entryDollar;
      }
    }
    return dollar;
  }

  int updateMonthlyIncome({required String year, required String month}) {
    int dollar = 0;
    for (int i = 0; i < _accounts.length; i++) {
      String entryYear = _accounts[i].dateTime.year.toString();
      String entryMonth = _accounts[i].dateTime.month.toString();
      int entryDollar = _accounts[i].dollar;
      if (entryYear == year && entryMonth == month && entryDollar > 0) {
        dollar = dollar + entryDollar;
      }
    }
    return dollar;
  }
}

