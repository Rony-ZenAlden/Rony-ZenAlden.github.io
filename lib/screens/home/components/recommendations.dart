import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/home/components/recommendation_card.dart';
import '../../../constants.dart';
import '../../../models/Recommendation.dart';

class Recommendations extends StatefulWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Certificates",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          Scrollbar(
            controller: _scrollController,
            thumbVisibility: true,
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demo_recommendations.length,
                      (index) => Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: RecommendationCard(
                      recommendation: demo_recommendations[index],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

