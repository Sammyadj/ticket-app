import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(hotelList[index]["place"]),
              background: Image.asset(
                "assets/images/${hotelList[index]["image"]}",
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum, odio eu maximus facilisis, enim urna porttitor nulla, eu faucibus odio velit a nisl. Nullam tincidunt massa quis neque tristique, feugiat porttitor sem ultrices. Fusce eget posuere ipsum. Duis pretium accumsan nulla vitae vestibulum. Vestibulum posuere hendrerit velit, nec ultricies lorem ultrices eget. Nunc volutpat laoreet lorem, non consequat nisl luctus a. Integer placerat, nibh quis porttitor ultrices, dolor nisi euismod ex, vitae luctus sem dolor ac mauris.",
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "More texts",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      color: Colors.red,
                      child: Image.network("https://placehold.co/200x200/png"),
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
