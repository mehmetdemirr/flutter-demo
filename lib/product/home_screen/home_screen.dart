import 'package:auto_route/auto_route.dart';
import 'package:demo/core/extension/screen_size.dart';
import 'package:demo/core/function/print_function.dart';
import 'package:demo/core/navigation/app_router.dart';
import 'package:demo/core/utilty/icon_items.dart';
import 'package:demo/product/home_screen/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: [
          IconButton(
            onPressed: () {
              context.router.pushNamed(RouterItem.setting.str());
            },
            icon: IconItem.setting.str(),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "${context.watch<HomeViewModel>().sayi}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Text(
            "Deneme",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          IgnorePointer(
            ignoring: true,
            child: InkWell(
              onTap: () {
                printf("mehmet basıldııı");
              },
              child: Icon(context.height > 20 ? Icons.abc : Icons.add),
            ),
          ),
          Container(
            width: context.width,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<HomeViewModel>().sayiArttir();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
