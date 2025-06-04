import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(
                        'News',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    Text(
                        'Cloud',
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold
                        ),
                    )
                ],
            )
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListView()
              
              // SliverToBoxAdapter(
              //   child: NewsListView(),
              // )
            ],
          )
          
        //   Column(
        //       children: [
        //           CategoriesListView(),
        //           const SizedBox(
        //               height: 32,
        //           ),
        //           Expanded(child: NewsListView())
        //       ],
        //   ),
        // )
    ));
  }
}



