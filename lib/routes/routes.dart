import 'package:karcha_book_provider/screens/add_category_screens/add_expense_category_screen.dart';
import 'package:karcha_book_provider/screens/add_category_screens/add_income_category_screen.dart';
import 'package:karcha_book_provider/screens/add_transaction_screens/add_expense_transaction_screen.dart';
import 'package:karcha_book_provider/screens/add_transaction_screens/add_income_transaction_screen.dart';
import 'package:karcha_book_provider/screens/add_transaction_screens/add_transaction_screen.dart';
import 'package:karcha_book_provider/screens/category_screen.dart';
import 'package:karcha_book_provider/screens/settings_screen.dart';
import 'package:karcha_book_provider/screens/statistics_screen.dart';
import 'package:karcha_book_provider/screens/transaction_screen.dart';
import 'package:karcha_book_provider/screens/view_statistics_screen/expense_statistics_screen.dart';
import 'package:karcha_book_provider/screens/view_statistics_screen/income_statistics_screen.dart';

class Routes {
  static const ADD_TRANSACTION_ROUTE = AddTransactionScreen();
  static const TRANSACTION_ROUTE = TransactionScreen();
  static const CATEGORY_ROUTE = CategoryScreen();
  static const STATISTICS_ROUTE = StatisticScreen();
  static const SETTING_ROUTE = SettingScreen();
  static const ADD_INCOME_TRANSACTION = AddIncomeTransactionScreen();
  static const ADD_EXPENSE_TRANSACTION = AddExpenseTransactionScreen();
  static const ADD_INCOME_CATEGORY = AddIncomeCategoryScreen();
  static const ADD_EXPENSE_CATEGORY = AddExpenseCategoryScreen();
  static const INCOME_STATISTICS = IncomeStatisticsScreen();
  static const EXPENSE_STATISTICS = ExpenseStatisticsScreen();
  
}
