import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(bankShinhan, 300000000);
final bankAccountToss = BankAccount(bankTtoss, 50000000);
final bankAccountKakao = BankAccount(bankKaKao, 70000000, accountTypeName: "입출금통장");
/*
main() {
  // list 출력
  /*
  for (final item in bankAccounts) {
    print("item : ${item.accountTypeName}");
  }
  */
  // map 출력 (기본)
  /*
  final shinhanBank = bankMap["Shinhan1"];
  print('shinhanBankMap : ${shinhanBank!.accountTypeName}');
  */
  // map 출력 (value가 null일 경우)
  // for (final entry in bankMap.entries) {
  //   print(entry.key + ":" + (entry.value.accountTypeName ?? "")); // null이면 빈값
  /*
    print(entry.key +
        ":" +
        (entry.value.accountTypeName ?? entry.value.bank.name));
    // accountTypeName이 null일 때 확실히 비어있지 않은 객체를 넘김
    */

  // set Data 확인 (contains함수 -> true/false 반환)
  //print(bankSet.contains(bankAccountShinhan1));
  // list에도 contains함수 들어있는데 시간복잡도가 다름(set/map은 상수, list는 O(n))

  // list to set
  bankAccounts.toSet();
  // set to list
  bankSet.toList();
}
*/
// List
final List<BankAccount> bankAccounts = [bankAccountShinhan1, bankAccountShinhan2, bankAccountShinhan3, bankAccountToss, bankAccountKakao];

// Map
final bankMap = {
  "Shinhan1": bankAccountShinhan1,
  "Shinhan2": bankAccountShinhan2,
};
// Set
// data를 가져오는 것이 아니라 data가 존재하는지 확인 용도로 많이 사용한다.
final bankSet = {bankAccountShinhan1, bankAccountShinhan2, bankAccountShinhan3, bankAccountToss, bankAccountKakao};
