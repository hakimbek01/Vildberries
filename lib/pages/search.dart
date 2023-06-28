import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  List categories = [
    "Kiyimlar",
    "Poyabzal",
    "Mashina",
    "Telefon",
    "MacBook",
    "NoteBook",
    "Uyali aloqa",
    "Gaz",
    "Svet",
    "Beeline",
    "Qishki kiyimlar"
    "Usell",
    "NBU",
    "AgroBank",
    "Humo",
    "Bolalar uchun kiyimlar aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: IconButton(
                        onPressed: (){},
                        icon: Icon(CupertinoIcons.search,color: Colors.grey,),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(CupertinoIcons.mic,color: Colors.grey,),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.enhance_photo_translate_outlined,color: Colors.grey,),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        elevation: 0,
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.2/1.2,
          mainAxisSpacing: 7,
          crossAxisSpacing: 7
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: "https://cdn1.ozone.ru/s3/multimedia-w/6564316286.jpg",
                  errorWidget: (context, url, error) => Center(child: Icon(Icons.warning,color: Colors.yellow,),),
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(.03),
                            Colors.black.withOpacity(.05),
                            Colors.black.withOpacity(.06),
                            Colors.black.withOpacity(.1),
                            Colors.black.withOpacity(.2),
                          ]
                      )
                  ),
                ),//buni
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(categories[index],style: TextStyle(color: Colors.white,),maxLines: 2,overflow: TextOverflow.ellipsis,),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
