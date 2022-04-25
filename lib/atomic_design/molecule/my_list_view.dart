import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> countryFlag = <String>[
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
    "https://img1.pngindir.com/20180601/skf/kisspng-land-islands-flag-of-land-flag-of-barbados-fla-5b10c818a4e300.4039899215278264566754.jpg",
    "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
    "https://cdn-icons-png.flaticon.com/512/197/197513.png",
    "https://tr.seaicons.com/wp-content/uploads/2017/04/USA-icon2.png",
  ];
  List<String> countryName = <String>[
    "ABD",
    "Afganistan",
    "Åland Adaları",
    "Almanya",
    "Amerikan Samoası",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antigua ve Barbuda",
    "Arjantin",
    "Arnavutluk",
    "Aruba",
    "Avustralya",
    "Avusturya",
    "Azerbaycan",
    "Bahamalar",
    "Honduras",
    "Hong Kong",
    "Irak",
    "İngiliz Hint Okyanusu Bölgesi",
    "İrlanda",
    "İspanya",
    "İsrail",
    "İsveç",
    "İsviçre",
    "İtalya",
    "İzlanda",
    "Jamaika"
    "Kolombiya",
    "Komorlar",
    "Kongo",
    "Kosta Rika",
    "Kuveyt",
    "Kuzey Mariana Adaları",
    "Laos",
    "Lesoto",
    "Letonya",
    "Liberya",
    "Libya",
    "Liechtenstein",
    "Litvanya",
    "Lübnan",
    "Lüksemburg",
    "Macaristan",
    "Madagaskar",
    "Makao",
    "Makedonya",
    "Malavi",
    "Maldivler",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: countryName.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 70.h,
            child: ListTile(
              leading: Image.network(countryFlag[index]),
              title: Text(countryName[index],style: TextStyle(
                fontSize: 16.r
              )),
            ),
          );
        });
  }
}
