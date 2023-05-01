// import 'package:dio/dio.dart' ;
// import 'package:flutter/widgets.dart';

// import 'package:get/get.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// import '../../model/track_model.dart';


// class SearchController extends GetxController
// {
//   final PagingController<int, Data> searchpagingController =
//   PagingController(firstPageKey: 0);
//   RxInt page     = 1.obs;
//   RxInt pageSize = 10.obs;
//   RxBool isLoading = false.obs;
//   final searchControllerText = TextEditingController();
  
//   final dio = Dio();
//    onSearchFromApi()
//    {
     
//        searchpagingController.addPageRequestListener((page) {
//        fetchNewPage();
//        }); 
//    }

//    Future<List<Data>> searchDataFromApi() async {
//   final response = await dio.get(
//     "https://api.deezer.com/search?q=${searchControllerText.text}&type=track&limit=10&page=1",
//     options: Options(responseType: ResponseType.json),
//   );
//   if (response.statusCode == 200) {
//     final decodedData = response.data;
//     final List<dynamic> articlesData = decodedData['data'];
//     final List<Data> articles =
//         articlesData.map((article) => Data.fromJson(article)).toList();
        
//     return articles;
//   } else {
//     throw Exception('Failed to load data');
//   }
//   }

  
//   Future<void> fetchNewPage() async {
//     try {
//       final newItems;
        
//           newItems = await searchDataFromApi();
       
//       final isLastPage = newItems.length < pageSize.value;
//       if (isLastPage) {
//            print('Last Page $page');
//         searchpagingController.appendLastPage(newItems);
//       } else {  
//         print('\nPage $page');
//        searchpagingController.appendPage(newItems, page.value++);
//       }

//     } catch (e) {
     
//        print('here error $e');
//       searchpagingController.error = e;
//     }
//   }
// }