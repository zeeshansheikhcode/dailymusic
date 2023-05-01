
// import 'package:dio/dio.dart';
// import 'package:get/get.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import '../../model/track_model.dart';

// class HomeController extends GetxController
// {
//   RxInt page     = 1.obs;
//   RxInt pageSize = 10.obs;

//   final dio = Dio();
//   final PagingController<int, Data> pagingController =
//   PagingController(firstPageKey: 0);

//   @override
//   void onInit() {
//     pagingController.addPageRequestListener((page) {
//       fetchNewPage();
//     });
  
//   }

   

//    Future<List<Data>> getDataFromApi() async {
//   final response = await dio.get(
//     "https://api.deezer.com/search?q=arjit&type=track&limit=$pageSize&page=$page",
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
//       final newItems = await getDataFromApi();
       
//       final isLastPage = newItems.length < pageSize.value;
//       if (isLastPage) {
//         pagingController.appendLastPage(newItems);
//       } else {  
//        pagingController.appendPage(newItems, page.value++);
//       }

//     } catch (e) {
//       pagingController.error = e;
//     }
//   }

  

// }