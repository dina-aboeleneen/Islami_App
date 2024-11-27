import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/quran/item_sura_details.dart';
import 'package:islami_app/my_theme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses= [];

  @override
  Widget build(BuildContext context) {
      var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
      if(verses.isEmpty){
        loadFile(args.index);
      }
      loadFile(args.index);
    return Stack(children: [
      Image.asset(
        "assets/images/default_bg.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            "${args.name}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verses.length ==0 ?
        Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ))
        :
        Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.06,
            horizontal: MediaQuery.of(context).size.width*0.5
            ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: MyTheme.whiteColor,
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
          color: Theme.of(context).primaryColor,
          thickness: 1,
        );
            },
            itemBuilder: (context, index){
              return ItemSuraDetails(content: verses[index], index: index,);
            },
            itemCount: verses.length,
          ),
        ),
      )
    ]);
  }

  void loadFile(int index)async{
    String content = await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String> lines = content.split("/n");
    verses = lines;
    setState(() {
      
    });
  } 
}

class SuraDetailsArgs{
  String name;
  int index;
  SuraDetailsArgs({required this.index, required this.name});
}
