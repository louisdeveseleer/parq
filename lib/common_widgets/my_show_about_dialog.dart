import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:parq/common_widgets/launch_url.dart';

void myShowAboutDialog(BuildContext context) async {
  return showAboutDialog(
    context: context,
    applicationIcon: SizedBox(
      width: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset('assets/logo.png'),
      ),
    ),
    applicationName: 'PAR-Q+',
    applicationVersion: '1.0.0',
    children: [
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'Application created by',
            ),
            TextSpan(
              text: ' Louis Deveseleer',
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchURL(
                      'https://louisdeveseleer.com',
                    ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 8,
      ),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'The information given is based on ',
            ),
            TextSpan(
              text: ' http://eparmedx.com/ ',
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchURL(
                      'http://eparmedx.com/',
                    ),
            ),
            TextSpan(
              text:
                  'and is given here in good faith and offers no guarantee of any kind. The advice contained does not substitute to medical advice.',
            ),
          ],
        ),
      )
    ],
  );
}
