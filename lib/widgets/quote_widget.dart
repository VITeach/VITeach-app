import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/text_themes.dart';
import 'package:viteach_learning_app/widgets/quote_api.dart';
import 'package:viteach_learning_app/widgets/quotes.dart';

class QuoteApi extends StatefulWidget {
  const QuoteApi({super.key});

  @override
  State<QuoteApi> createState() => _QuoteApiState();
}

class _QuoteApiState extends State<QuoteApi> {
  bool inProgress = false;
  Autogenerated? quote;

  @override
  void initState() {
    _fetchQuote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Shimmer.fromColors(
        period: Duration(milliseconds: 2500),
        baseColor: Colors.grey[300]!,
        highlightColor: const Color.fromARGB(255, 255, 8, 8),
        loop: double.maxFinite.toInt(),
        enabled: true,
        child: Text('Quote of the Day!'),
      ),
      FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.center,
        child: Text(
          quote?.quote ?? ".....",
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'monospace',
          ),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 16.0),
      FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.center,
        child: Text(
          quote?.author ?? ".....",
          style: const TextStyle(
            fontSize: 10,
            fontFamily: 'monospace',
          ),
        ),
      ),
    ]);
  }

  _fetchQuote() async {
    setState(() {
      inProgress = true;
    });
    try {
      final fetchedQuote = await Api.fetchRandomQuote();
      setState(() {
        debugPrint(fetchedQuote.toJson().toString());
        quote = fetchedQuote;
      });
    } catch (e) {
      debugPrint("Failed to generate quote");
    } finally {
      setState(() {
        inProgress = false;
      });
    }
  }
}
