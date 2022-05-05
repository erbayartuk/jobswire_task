import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobswire_bootcamp/view/home/widget/newscard.dart';
import 'package:jobswire_bootcamp/view/home_detail/homepage_detail.dart';
import 'package:jobswire_bootcamp/viewModel/homepage_cubit/homepage_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<HomepageCubit>(context).getNewsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Haberler",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: BlocBuilder<HomepageCubit, HomepageState>(
          builder: (context, state) {
            if (state is NewsLoadingState) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is NewsSuccessfulState) {
              return ListView.builder(
                itemCount: state.data?.length,
                itemBuilder: (context, index) => NewsCard(
                    newsTitle: state.data![index].name.toString(),
                    newsImage: state.data![index].image.toString(),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePageDetail(
                                    data: state.data![index],
                                  )));
                    }),
              );
            }
            return Container();
          },
        ));
  }
}
