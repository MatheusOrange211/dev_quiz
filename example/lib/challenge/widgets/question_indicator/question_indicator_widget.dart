import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão 04",
                  style: AppTextStyles.bodyLightGrey20,
                ),
                Text(
                  " de 10",
                  style: AppTextStyles.bodyLightGrey20,
                ),
              ],
            ),
          ),
          SizedBox(height: 16,),
          ProgressIndicatorWidget(value: 0.4),
        ],
      ),
    );
  }
}
