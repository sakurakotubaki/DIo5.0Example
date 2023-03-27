import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_example/model/superheros.dart';

import '../repository/provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(listProvider); //取得したAPIデータの監視
    return Scaffold(
      body: Center(
        child: asyncValue.when(
          data: (data) {
            return data.isNotEmpty
                ? ListView(
                    children: data
                        .map(
                          (Superheros superheros) => Card(
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Image.network(
                                  superheros.url.toString(),
                                  fit: BoxFit.fill,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              title: Text(superheros.name!),
                              subtitle: Text(superheros.power!),
                            ),
                          ),
                        )
                        .toList(),
                  )
                : const Text('Data is empty.');
          },
          loading: () => const CircularProgressIndicator(),
          error: (error, _) => Text(error.toString()),
        ),
      ),
    );
  }
}
