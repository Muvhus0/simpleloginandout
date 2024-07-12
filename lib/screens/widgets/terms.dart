import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Terms and Conditions'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. License\n\n'
              'The App is licensed under the MIT License. '
              'You may use, copy, modify, merge, publish, distribute, sublicense, '
              'and/or sell copies of the App, subject to the conditions of the License.\n\n'
              '2. No Warranty\n\n'
              'The App is provided "as is", without warranty of any kind, express or implied, '
              'including but not limited to the warranties of merchantability, fitness for a '
              'particular purpose, and non-infringement. The Developer makes no warranties '
              'regarding the accuracy, reliability, or availability of the App.\n\n'
              '3. Limitation of Liability\n\n'
              'In no event shall the Developer be liable for any damages, including but not '
              'limited to any direct, indirect, special, incidental, or consequential damages '
              'or losses arising out of the use or inability to use the App, even if advised '
              'of the possibility of such damages.\n\n'
              '4. User Conduct\n\n'
              'By using the App, you agree not to:\n'
              '- Use the App for any unlawful purpose or to violate any laws.\n'
              '- Reverse engineer, decompile, or disassemble the App.\n'
              '- Modify, adapt, translate, or create derivative works based upon the App.\n\n'
              '5. Updates\n\n'
              'The Developer may update or modify the App from time to time, with or without '
              'notice. Your continued use of the App after such updates constitutes your '
              'acceptance of the revised Terms.\n\n'
              '6. Privacy\n\n'
              'The App may collect and use information as described in the Privacy Policy. By '
              'using the App, you consent to such collection and use of data.\n\n'
              '7. Governing Law\n\n'
              'These Terms shall be governed by and construed in accordance with the laws of '
              'South Africa. Any dispute arising out of or relating to these Terms '
              'shall be subject to the exclusive jurisdiction of the courts of South '
              'Africa.\n\n'
              '8. Changes to Terms\n\n'
              'The Developer reserves the right to modify or replace these Terms at any time. '
              'It is your responsibility to review these Terms periodically for changes. Your '
              'continued use of the App following the posting of any changes to these Terms '
              'constitutes acceptance of those changes.\n\n'
              '9. Contact\n\n'
              'If you have any questions about these Terms, please contact me , details are available on github : https://github.com/Muvhus0.',
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}
