import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/core.dart';
// import 'package:DevQuiz/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int lenght;
  final int result;
  int get porcent => ((result/lenght)*100).round();

  const ResultPage({Key? key, required this.title, required this.lenght, required this.result}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.trophy,
              width: 300,
              height: 300,
            ),
            Text(
              " Parabéns!",
              style: AppTextStyles.heading40,
            ),
            SizedBox(
              height: 16,
            ),
            Text.rich(
              TextSpan(
                  text: "Você Concluiu",
                  style: AppTextStyles.body,
                  children: [
                    TextSpan(
                        text: "\n$title ",
                        style: AppTextStyles.bodyBold),
                    TextSpan(
                        text: "\ncom $result de $lenght acertos.",
                        style: AppTextStyles.body),
                  ]),
              textAlign: TextAlign.center,
            ),
            Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 68),
                          child: NextButtonWidget.purple(
                              label: "Compartilhar", onTap: () {
                                Share.share("DevQuiz NLW 05 - Flutter: Resultado do Quiz: $title\nAproveitamento de $porcent %");
                              }),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 68),
                          child: NextButtonWidget.white(
                              label: "Voltar ao Início",
                              onTap: () {
                                Navigator.pop(context);
                              }),
                        )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
