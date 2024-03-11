import "package:flutter/material.dart";
import "package:helloworld/widget/add_to_cart.dart";
import "package:velocity_x/velocity_x.dart";

import "../models/catlog.dart";

class HomeDetailPage extends StatelessWidget {
  final Item item;
  const HomeDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xfff9f7f4),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 16),
          children: [
            '\$${item.price}'.text.bold.xl3.make(),
            AddToCart(catalog: item).wh(115, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        // bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(item.id.toString()),
                child: Image.asset(item.image,
                    width: 300, height: 300, fit: BoxFit.fill)),
            Expanded(
              child: VxArc(
                  height: 30,
                  arcType: VxArcType.convey,
                  edge: VxEdge.top,
                  child: Container(
                    width: context.screenWidth,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          item.name.text.xl4.bold.make(),
                          item.desc.text.xl
                              .textStyle(context.captionStyle)
                              .make(),
                          10.heightBox,
                          "demo text loerm set to the night day and sun flower coming call add remove set soft big alert text near off global public and set row column cross axis"
                              .text
                              .textStyle(context.captionStyle)
                              .xl
                              .make()
                              .p16()
                        ],
                      ).py64(),
                    ),
                  )),
            )
          ],
        ).p16(),
      ),
    );
  }
}
