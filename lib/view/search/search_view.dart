
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import '../../components/news_box.dart';
// import '../../model/track_model.dart';
// import '../../viewmodel/search_viewmodel/search_viewmodel.dart';
// class SearchView extends StatelessWidget {
//    SearchView({super.key});
//   final SearchController searchviewmodel = Get.put(SearchController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('News'),
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//       ),
//       body: searchviewmodel.isLoading.value 
//             ?
//              const Center(child:  CircularProgressIndicator(),)
//             :
//        PagedListView<int, Data>(
//               pagingController:searchviewmodel.searchpagingController,
//               builderDelegate: PagedChildBuilderDelegate<Data>(
//                 itemBuilder: (context, item, index) => Column(
//                   children: [
//                     NewsBox(
//                       data: item,
//                       ),
//                     if (index == searchviewmodel.searchpagingController.itemList!.length- 1)
//                       Container(
//                         padding:const EdgeInsets.all(15.0),
//                         child:const Text("No More Data"),
//                       ),
//                   ],
//                 ),
//               ),
//             ),
          
//     );
//   }
// }