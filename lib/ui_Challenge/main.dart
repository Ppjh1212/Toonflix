import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Flutter_Study/ui_Challenge/widgets/button.dart';
import 'package:Flutter_Study/ui_Challenge/widgets/card.dart';

void main() {
  runApp(const App());
}

// 코드 왼쪽 전구 클릭시 추가 작업 가능
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20, // 수평
            ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end, //
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),

                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                const SizedBox(
                  height: 60,
                ),

                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),

                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                const Row(
                  // Button
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: "Transfer",
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),

                    Button(
                      text: "Request",
                      bgColor: Color.fromARGB(255, 46, 49, 51),
                      textColor: Colors.white,
                    )
                  ],
                ),

                const SizedBox(
                  height: 40,
                ),

                Row(
                  // Wallets
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                const CurrencyCard(
                    name: "Euro",
                    code: "EUR",
                    amount: "6 428",
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    offset: 0,
                  ),
                

                const CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: "55 622",
                    icon: Icons.attach_money_outlined,
                    isInverted: true,
                    offset: -20,
                  ),

                const CurrencyCard(
                    name: "Rupee",
                    code: "INR",
                    amount: "28 981",
                    icon: Icons.currency_rupee_outlined,
                    isInverted: false,
                    offset: -40,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
