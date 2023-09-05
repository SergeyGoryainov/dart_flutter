import 'package:flutter/material.dart';
import 'buttons.dart';
import 'story_brain.dart';

void main() => runApp(const Destini());

class Destini extends StatelessWidget {
  const Destini({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

var storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: MyButton(
                  //Choice 1 made by user.
                  label: storyBrain.getChoice1(),
                  onPress: () {
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                  },
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.shouldBeVisible(),
                  child: MyButton(
                    label: storyBrain.getChoice2(),
                    onPress: () {
                      setState(() {
                        storyBrain.nextStory(2);
                      });
                    },
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
