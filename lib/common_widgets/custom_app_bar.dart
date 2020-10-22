import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () async {
              PackageInfo packageInfo = await PackageInfo.fromPlatform();
              return showAboutDialog(
                  context: context,
                  applicationIcon: SizedBox(
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset('assets/logo.jpg'),
                    ),
                  ),
                  applicationName: packageInfo.appName,
                  applicationVersion: packageInfo.version,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'App created by',
                          ),
                          TextSpan(
                            text: ' Louis Deveseleer',
                            style: DefaultTextStyle.of(context)
                                .style
                                .copyWith(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => _launchURL(
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
                              ..onTap = () => _launchURL(
                                    'http://eparmedx.com/',
                                  ),
                          ),
                          TextSpan(
                            text:
                                'in good faith and offers no guarantee of any kind. This does not substitute to medical advice.',
                          ),
                        ],
                      ),
                    )
                  ]);
            },
            visualDensity: VisualDensity.compact,
            icon: Icon(
              FontAwesomeIcons.heartbeat,
            ),
            color: Theme.of(context).hintColor,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            '2020 PAR-Q+',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Theme.of(context).hintColor,
                ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
