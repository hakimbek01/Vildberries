import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:like_button/like_button.dart';
import 'package:mvvmproject/model/product_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List items = ["assets/images/4.jpg","assets/images/5.jpg","assets/images/6.jpg","assets/images/7.jpg","assets/images/8.jpg","assets/images/1.jpg","assets/images/5.jpg"];
  List<Product> products = [
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 12.32,title: "Avto1",img: "assets/images/1.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 13.32,title: "Avto1",img: "assets/images/2.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 14.32,title: "Avto1",img: "assets/images/3.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 15.32,title: "Avto1",img: "assets/images/4.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 16.32,title: "Avto1",img: "assets/images/5.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 17.32,title: "Avto1",img: "assets/images/6.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 18.32,title: "Avto1",img: "assets/images/7.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 19.32,title: "Avto1",img: "assets/images/8.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 20.32,title: "Avto1",img: "assets/images/1.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 21.32,title: "Avto1",img: "assets/images/2.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 22.32,title: "Avto1",img: "assets/images/3.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 23.32,title: "Avto1",img: "assets/images/4.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 24.32,title: "Avto1",img: "assets/images/5.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 24.32,title: "Avto1",img: "assets/images/5.jpg"),
    Product(discription: "mkwnfuuwueibvwiubvwvbwuvievbiuwbvwiubw",price: 24.32,title: "Avto1",img: "assets/images/5.jpg"),
  ];
  String currentLanguage = "assets/images/uzb.png";
  bool showFab = false;

  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(CupertinoIcons.bell_fill),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        title: PopupMenuButton(
          itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("Nima qoyishni bilmadim shera"),)
            ];
          },
          child: Row(
            children: [
              SizedBox(
                width: width>1000?320:width>670?300:150,
                child: const Text("Toshkent,Buxoro,G'ijduvon tumani va boshqalar",style: TextStyle(color: Colors.white,fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,),
              ),
              const Icon(CupertinoIcons.chevron_down,color: Colors.white,)
            ],
          ),
        ),
        actions: [
          PopupMenuButton(
            padding: EdgeInsets.zero,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      currentLanguage = "assets/images/uzb.png";
                    });
                  },
                  child: const Image(
                    height: 40,
                    image: AssetImage("assets/images/uzb.png"),
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      currentLanguage = "assets/images/rus.png";
                    });
                  },
                  child: const Image(
                    height: 40,
                    image: AssetImage("assets/images/rus.png"),
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      currentLanguage = "assets/images/usa.png";
                    });
                  },
                  child: const Image(
                    height: 40,
                    image: AssetImage("assets/images/usa.png"),
                  ),
                ),
              ];
            },
            child: Row(
              children: [
                Image(
                  width: 30,
                  image: AssetImage(currentLanguage),
                ),
                const SizedBox(width: 5,),
                Text(currentLanguage.split('/').last=="uzb.png"?"So'm":currentLanguage.split('/').last=="rus.png"?"₽":"\$",style: const TextStyle(color: Colors.white),),
              ],
            ),
          ),

          const SizedBox(width: 10,),
        ],
        backgroundColor: Colors.purple,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                          onPressed: (){},
                          icon: const Icon(CupertinoIcons.search,color: Colors.grey,),
                        ),
                        hintText: "Search",
                        hintStyle: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(CupertinoIcons.mic,color: Colors.grey,),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.enhance_photo_translate_outlined,color: Colors.grey,),
                      )
                    ],
                  )
                ],
              )

          ),
        ),
        elevation: 0,
      ),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          setState(() {
            if (direction == ScrollDirection.reverse) {
              showFab = false;
            } else if (direction == ScrollDirection.forward) {
              showFab = true;
            }
          });
          return true;
        },
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              const SizedBox(height: 10,),
              SizedBox(
                height: 230,
                child: Swiper(
                  pagination: const SwiperPagination(),
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width-10,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(items[index],fit: BoxFit.cover,),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height:  width>670?(items.length)*35:(items.length)*55,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: width>670?3:2,
                    childAspectRatio: width>1000?3.5/1:width>670?3/1:2/.9,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(items[index],fit: BoxFit.cover,),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: width>1000?products.length*130:products.length * 200,//products.length*MediaQuery.of(context).size.width/2,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisCount: width>1000?3:2,
                    childAspectRatio: width>1000?1.2/1:width>670?1.8/2:1.8/3.4,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return itemOfProduct(products[index]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: AnimatedSlide(
        duration: const Duration(milliseconds: 300),
        offset: showFab ? Offset.zero : const Offset(0, 2),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: showFab ? 1 : 0,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              setState(() {
                scrollController.animateTo(1, duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
              });
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: const Icon(CupertinoIcons.chevron_up),
          )
        ),
      ),
    );
  }

  Widget itemOfProduct(Product product) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.hardEdge,
          child: Stack(
            children: [
              Image(
                image: AssetImage(product.img!),
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 40,
                  child: Column(
                    children: [
                      LikeButton()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${product.price} so'm",style: const TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 17),),
              Text(product.title!,style: const TextStyle(fontWeight: FontWeight.bold),),
              Text(product.discription!,style: const TextStyle(color: Colors.grey),maxLines: 2,overflow: TextOverflow.ellipsis,),
            ],
          ),
        )
      ],
    );
  }

}
