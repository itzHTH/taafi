// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "HaveAcc":
            MessageLookupByLibrary.simpleMessage("Do You Have an Account"),
        "LosePassword":
            MessageLookupByLibrary.simpleMessage("Forget Password ?"),
        "SaveLogin":
            MessageLookupByLibrary.simpleMessage("Save Login Information"),
        "createAcc": MessageLookupByLibrary.simpleMessage("Create Account"),
        "dontHaveAcc":
            MessageLookupByLibrary.simpleMessage("Don\'t Have An Account ?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "loginButton": MessageLookupByLibrary.simpleMessage("Login"),
        "or": MessageLookupByLibrary.simpleMessage("Or"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "rePassword": MessageLookupByLibrary.simpleMessage("ReWrite Password"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "welcomeBack": MessageLookupByLibrary.simpleMessage(
            "Welcome Back To Taafi Login Now")
      };
}
