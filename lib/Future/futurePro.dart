import 'package:flutter_riverpod/flutter_riverpod.dart';

final futureProvider = FutureProvider((red)async{
 await Future.delayed(Duration(seconds: 3));
  return 9;
});