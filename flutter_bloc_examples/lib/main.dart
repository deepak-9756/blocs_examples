import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/switch_bloc_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SwitchBlocBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),

            // Add a Switch button for notifications
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Enable Notifications'),
                BlocBuilder<SwitchBlocBloc, SwitchBlocInitial>(
                  buildWhen: (previous, current) =>
                      previous.isSwitch != current.isSwitch,
                  builder: (context, state) {
                    debugPrint("buildercall");
                    return Switch(
                      value: state.isSwitch, // Current state of the switch
                      onChanged: (value) {
                        context.read<SwitchBlocBloc>().add(EnableDisable());
                      }, // Toggle function
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),

            BlocBuilder<SwitchBlocBloc, SwitchBlocInitial>(
              buildWhen: (previous, current) =>
                  previous.sliderval != current.sliderval,
              builder: (context, state) {
                debugPrint("buildercall!2");
                return Slider(
                    value: state.sliderval,
                    onChanged: (value) {
                      context
                          .read<SwitchBlocBloc>()
                          .add(SliderEvent(sliderval: value));
                    });
              },
            ),

            // You can add more content or widgets below
          ],
        ),
      ),
    );
  }
}
