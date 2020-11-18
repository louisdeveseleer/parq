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
            TextSpan(text: ' with permission from the PAR-Q+ Collaboration ('),
            TextSpan(
              text: 'www.eparmedx.com',
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchURL(
                      'https://www.eparmedx.com',
                    ),
            ),
            TextSpan(
                text:
                    ') and the authors of the PAR-Q+ (Dr. Darren Warburton, Dr. Norman Gledhill, Dr. Veronica Jamnik, Dr. Roy Shephard, and Dr. Shannon Bredin).'),
          ],
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        'The information given here offers no guarantee of any kind. The advice contained does not substitute to medical advice.',
      ),
    ],
  );
}
