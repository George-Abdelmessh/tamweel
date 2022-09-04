import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';

class NoConnection extends StatefulWidget {
  const NoConnection({super.key, required this.text});

final String text;
  @override
  State<NoConnection> createState() => _NoConnectionState();
}


class _NoConnectionState extends State<NoConnection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: AppSize.height * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    'assets/images/undraw_Notify_re_65on.png',
                    width: AppSize.height * 0.4,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Text(
                  widget.text,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// SizedBox(
//   height: AppSize.height * 0.1,
// ),
// TextButton(
//   child: Icon(
//     Icons.refresh_outlined,
//     color: AppColor.primary,
//     size: 35,
//   ),
//   onPressed: () {
//     RestartWidget.restartApp(context);
//   },
// )
