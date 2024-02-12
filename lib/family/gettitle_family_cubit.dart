// // import 'package:slicing_ui_kmn_01/app/bloc/home/family/gettitle_family_state.dart';
// // import 'package:slicing_ui_kmn_01/family/gettitle_family_state.dart';
// // import 'package:slicing_ui_kmn_01/app/utilities/constants.dart';
// // import 'package:slicing_ui_kmn_01/data/repository/engine_auth_dev.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class GetTitleFamilyCubit extends Cubit<GetTitleFamilyState> {
//   GetTitleFamilyCubit() : super(InitialGetTitleFamily());

//   void getTitleFamily() async {
//     try {
//       emit(LoadingGetTitleFamily());
//       final result = await APIRequest.family.getTitle();
//       if (result.value != null) {
//         emit(LoadedGetTitleFamily(listTitleFamilyRelationGender: result.value));
//       } else {
//         emit(NotLoadedGetTitleFamily(error: FAILURE_SAVE_DATA));
//       }
//     } catch (error) {
//       emit(NotLoadedGetTitleFamily(error: '$FAILURE_SAVE_DATA$UNKNOWN'));
//     }
//   }
// }
