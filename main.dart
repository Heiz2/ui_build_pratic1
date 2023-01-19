import 'package:flutter/material.dart';
import 'package:pratice1/widgets/button.dart';
import 'package:pratice1/widgets/card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Sampled',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcom Back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                /** 가로 */
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5,194,482',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const currentCard(
                  textname: 'Euro',
                  code: 'EUR',
                  amount: '6,428',
                  icons: Icons.euro_rounded,
                  isInverted: false,
                  order: 1,
                ),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: const currentCard(
                    textname: 'BitCoin',
                    code: 'BTC',
                    amount: '9,854',
                    icons: Icons.currency_bitcoin,
                    isInverted: true,
                    order: 2,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const currentCard(
                    textname: 'Dollar',
                    code: 'USD',
                    amount: '12,854',
                    icons: Icons.attach_money_rounded,
                    isInverted: false,
                    order: 3,
                  ),
                ),
              ],
            ), /** 세로 */
          ),
        ),
      ),
    );
  }
}





















  /** Recap
   *  App Class는 StatelessWidget을 상속 받아 Widget으로 생성 하는데
      StatelessWidget을 상속 받고 싶으면 build라는 method를 구현해야한다.
      build method는 flutter가 실행하는 method인데 무엇을 하던 화면에 return 해줌
      즉 build method는 widget의 UI를 생성함.
      단순 Class를 생성하는건 좋지 못한데 화면에 출력될 widget들이 합쳐서 ui를 생성하기에
      상속을 받아주는것이 훨씬 좋다.
   * @override는 flutter가 아닌 dart에서 사용하는 어노테이션으로
   *  부모 class에 있는 method를 override함 build method의 부모 class는
   *  StatelessWidget으로 statelesswidget에 들어가면 build method를 찾을 수 있음
   *  build Widget을 return 해야하는데 flutter가 build method를 호출할 때 
   *  무엇을 하던 return시켜 화면에 출력시켜준다.
   *  현재 App Widget은 runApp() 함수에 주는 widget임
   *  즉 App widget은 예제 앱의 root다
   *  모든 화면 및 버튼 등 기능들은 App Widget으로부터 작성되는데
   *  root widget인 app은 다음 중 하나의 옵션을 return 해야한다.
   *  1. MaterialApp Widget의 return
   *  2. CupertinoApp Widget의 return
   *  => Material과 Cupertino는 각 Google 과 Apple의 DeignSystem인데
   *     원하는 플랫폼에 맞춰 Return 해주면됨. 
   *  타겟은 Google이므로 MaterialApp을 Return
   *  다만 Google도 Apple도 아닌 나만의 커스터마이즈UI를 만들고 싶어도
   *  어플리케이션의 시작점이므로 일단은 메인 테마는 정해놓고 시작해야된다.
   *  flutter는 google이 만들어서 marterial이 cupertino보다 훨씬 보기 좋다.
   *  근데 구글 느낌 빼는건 그리 어렵지 않음
   *  MarterialApp class에는 Home이라는 Property가 있는데
   *  Home은 Widget이 되어야 한다, 또 다른 widget이...
   *  해당 예제에서는 Text를 호출해본다.
   *  오류 생기는거 무시해라 나중에 고친다.
   *  실행시키면 최상단에 이상한게 들어온다.
   *  이는 fltter 개발에 있는 규칙때문인데 화면은 scaffold(스카포드)라는걸 가져야한다.
   *  scaffold는 화면의 구조를 제공해주는데 모바일 앱의 모든 화면은 scaffold가 필요하다.
   *  scaffold는 navigation bar를 구현할 수 있게 해주고
   *  bottom tab bar나 상단 버튼, 화면 중앙 정렬 등 이런걸 scaffold가 해준다.
   *  따라서 text만 사용하지 않고 scaffold라는 widget을 불러오는데 이것도 class다
   *  그냥 다 class다
   *  scaffold class에는 body라는 property가 존재하는데
   *  이 body도 widget이다.
   *  쓰기편하게 하나 class가 끝나면 ,로 구분하자. vscode는 신이라 도와준다.
   * 
   *  클래스를 불러오면 해당 클래스에 다른 widget을 집어넣어 출력한다.
   */

