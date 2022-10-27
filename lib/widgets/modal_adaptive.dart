import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Modal {
  showModalSelect(BuildContext context) {
    if (Platform.isIOS) {
      showCupertinoModalPopup(
          context: context,
          builder: (BuildContext context) {
            return CupertinoActionSheet(
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () {},
                  child: const Text('Select from Device'),
                ),
                // CupertinoActionSheetAction(
                //   onPressed: () {
                //     cameraFile(doc, preview, folder, docUrl);
                //     Navigator.of(context).pop();
                //   },
                //   child: const Text('Camera'),
                // ),
              ],
            );
          });
    }
  }
}
