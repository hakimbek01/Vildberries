import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(CupertinoIcons.person_alt_circle_fill,color: Colors.grey,),
        title: const Text("Salom!",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell,color: Colors.purple,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(.2),blurRadius: 4,spreadRadius: .8)
                  ]
              ),
              child: Container(
                height: 80,
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("30 % gacha",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Chegirma",style: TextStyle(color: Colors.grey,fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 7,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("0 so'm",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("To'lov summasi",style: TextStyle(color: Colors.grey,fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 7,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("0 %",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                            Text("To'lov foizi",style: TextStyle(color: Colors.grey,fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(.2),blurRadius: 4,spreadRadius: .8)
                ]
              ),
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: [
                  buttons(title: "Yetkazib berish",discription: "Keyingi: Kutilmaydi",isEnd: false),
                  buttons(title: "Mening xaridlarim",isEnd: false),
                  buttons(title: "Kutish ro'yhati",discription: "Stokda 0/0",isEnd: false),
                  buttons(title: "Kechiktirilgan",isEnd: false),
                  buttons(title: "Sevimli brendlar",isEnd: true),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(.2),blurRadius: 4,spreadRadius: .8)
                  ]
              ),
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Savollar uchun",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Qanaqadir savolingiz bo'lsa \nbiz bilan ulashing",style: TextStyle(color: Colors.grey),maxLines: 2,)
                    ],
                  ),
                  SizedBox(
                      width: 80,
                      height: 80,
                    child: Stack(
                      children: [
                        Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/savollar.png'),
                        ),
                        Center(child: Icon(CupertinoIcons.question,color: Colors.white,),)
                      ],
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buttons({title,discription,isEnd}) {
    return Column(
      children: [
        MaterialButton(
          onPressed: (){},
          padding: EdgeInsets.zero,
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    discription!=null?
                    Text(discription,style: const TextStyle(color: Colors.grey,fontSize: 13),)
                    :const SizedBox()
                  ],
                ),
                const Icon(CupertinoIcons.chevron_forward,color: Colors.grey,)
              ],
            ),
          ),
        ),
        isEnd?const SizedBox():const Divider(indent: 20,height: 1,),
      ],
    );
  }

}
