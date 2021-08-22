import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';

class Storage {
  Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    return File('$path/users.txt');
  }

  Future<bool> readData(usAux, pwAux) async {
    try {
      final file = await localFile;
      String body = await file.readAsString();
      return body.contains("**#**" + usAux + "#-#" + pwAux + "**#**");
    } catch (e) {
      return false;
    }
  }

  Future<bool> findUser(usAux) async {
    try {
      final file = await localFile;
      String body = await file.readAsString();
      return body.contains("**#**" + usAux + "#-#");
    } catch (e) {
      return false;
    }
  }

  Future<File> writeData(String user, String pw) async {
    final file = await localFile;
    String body = await file.readAsString();
    String newBody = body + "**#**" + user + "#-#" + pw + "**#**";
    return file.writeAsString(newBody);
  }
}
