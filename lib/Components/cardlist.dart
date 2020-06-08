import 'package:expense_tracker/Components/cardview.dart';
import 'package:expense_tracker/Model/cardmodel.dart';
import 'package:expense_tracker/Pages/cardview.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final List<CardModel> cards;

  const CardList({Key key, this.cards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: getChaildrenCards(context)
    );
  }

  List<Widget> getChaildrenCards(context) {
    return cards.map((card) =>
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CardViewPage(card: card)));
        },
        child: CardView(card),
      )
    ).toList();
  }
}