import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manager/bloc/chat_bloc/chat_bloc.dart';
import '../utils/app_colors.dart';
import '../utils/enums.dart';

Widget userTypeSelectionChat({required BuildContext context}) {
  var chatBloc = ChatBloc.get(context);
  return BlocBuilder<ChatBloc, ChatState>(
    builder: (context, state) {
      return Row(
        children: [
          ...UserTypes.values.map((e) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    chatBloc.add(ChatEvent.changeUserFilter(selectedUser: e));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: state.selectedType == e
                            ? AppColors.primaryColor
                            : AppColors.primaryColor.withOpacity(0.2),
                      ),
                      color: state.selectedType == e
                          ? AppColors.primaryColor
                          : AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        e.name.toUpperCase(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: state.selectedType == e
                              ? AppColors.white
                              : AppColors.grey600,
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      );
    },
  );
}
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../manager/chat_bloc/chat_bloc.dart';
// import '../utils/app_colors.dart';
// import '../utils/enums.dart';

// Widget userTypeSelectionChat({required BuildContext context}) {
//   var chatBloc = ChatBloc.get(context);

//   return BlocBuilder<ChatBloc, ChatState>(
//     builder: (context, state) {
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           ...UserTypes.values.map((e) => FilterChip(
//                 label: Text(
//                   e.name.toUpperCase(),
//                   style: TextStyle(
//                       fontSize: 16,
//                       color: state.selectedType == e
//                           ? AppColors.primaryColor
//                           : AppColors.greyText),
//                 ),
//                 selected: state.selectedType == e,
//                 selectedColor: AppColors.white,
//                 backgroundColor: AppColors.white,
//                 shape: StadiumBorder(
//                     side: BorderSide(
//                   color: state.selectedType == e
//                       ? AppColors.primaryColor
//                       : AppColors.grey400,
//                 )),
//                 onSelected: (bool isSelected) {
//                   if (isSelected) {
//                     chatBloc.add(ChatEvent.changeUserFilter(selectedUser: e));
//                   }
//                 },
//               ))
//         ],
//       );
//     },
//   );
// }
