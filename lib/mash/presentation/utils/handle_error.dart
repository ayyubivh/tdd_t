import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

void handleErrorUi({required BuildContext context, required dynamic error}) {
  if (error is UnauthorisedException) {
    handleUnAuthorizedError(context);
  } else {
    handleError(context, error.toString(),
        () => context.canPop() ? context.pop() : null);
  }
}
