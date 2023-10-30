import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(bankShinhan, 300000000);
final bankAccountShinhan4 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan5 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan6 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan7 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan8 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan9 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan10 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan11 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan12 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan13 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan14 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan17 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan15 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan16 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");

final bankAccountToss = BankAccount(bankTtoss, 50000000);
final bankAccountKakao1 =
    BankAccount(bankKaKao, 70000000, accountTypeName: "입출금통장");
final bankAccountKakao2 =
    BankAccount(bankKaKao, 70000000, accountTypeName: "입출금통장");
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
final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountShinhan3,
  bankAccountShinhan4,
  bankAccountShinhan5,
  bankAccountShinhan6,
  bankAccountShinhan7,
  bankAccountShinhan8,
  bankAccountShinhan9,
  bankAccountShinhan10,
  bankAccountShinhan11,
  bankAccountShinhan12,
  bankAccountShinhan13,
  bankAccountShinhan14,
  bankAccountShinhan17,
  bankAccountShinhan15,
  bankAccountShinhan16,
  bankAccountToss,
  bankAccountKakao1,
  bankAccountKakao2
];

// Map
final bankMap = {
  "Shinhan1": bankAccountShinhan1,
  "Shinhan2": bankAccountShinhan2,
};
// Set
// data를 가져오는 것이 아니라 data가 존재하는지 확인 용도로 많이 사용한다.
final bankSet = {
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountShinhan4,
  bankAccountShinhan5,
  bankAccountShinhan6,
  bankAccountShinhan7,
  bankAccountShinhan8,
  bankAccountShinhan9,
  bankAccountShinhan10,
  bankAccountShinhan11,
  bankAccountShinhan12,
  bankAccountShinhan13,
  bankAccountShinhan14,
  bankAccountShinhan17,
  bankAccountShinhan15,
  bankAccountShinhan16,
  bankAccountToss,
  bankAccountKakao1,
  bankAccountKakao2
};
