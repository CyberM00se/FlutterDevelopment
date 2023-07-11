import 'package:flutter/material.dart';
import 'quote.dart';
import 'Quote_Card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quoteList = [
    Quote(
        author: 'Jeremiah 29:11',
        text:
            'For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, to give you a future and a hope.'),
    Quote(
        text:
            'Trust in the Lord with all your heart, and do not lean on your own understanding. In all your ways acknowledge him, and he will make straight your paths.',
        author: 'Proverbs 3:5-6'),
    Quote(
        text:
            'Fear not, for I am with you; be not dismayed, for I am your God; I will strengthen you, I will help you, I will uphold you with my righteous right hand.',
        author: 'Isaiah 41:10')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Bible Verses'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quoteList
            .map(
              (quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quoteList.remove(quote);
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
