import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'navigation_provider.dart';
import 'drawer_item.dart';
import 'drawer_items.dart';
import 'shoppingcart_page.dart';
import 'settings_page.dart';
import 'sell_page.dart';
import 'profile_page.dart';
import 'shopping_page.dart';
import 'regulatory_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final safeArea = EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    return Drawer(
      child: Container(
        color: const Color(0xFF262AAA),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 74, horizontal: 20).add(safeArea),
              width: double.infinity,
              color: Colors.white12,
              child: buildHeader(),
            ),
            const SizedBox(height: 24),
            buildList(items: itemsFirst),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildList(indexOffset: itemsFirst.length, items: itemsSecond),
            const Spacer(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() => Row(
    children: [
      Image.asset(
        'lib/src/assets/icons/logo_rp.png',
        width: 48,
        height: 48,
      ),
      const SizedBox(width: 16),
      const Text(
        'ENERRAS',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );

  Widget buildList({
    required List<DrawerItem> items,
    int indexOffset = 0, //Offset 0 für die ersten Elemente im side navigation
  }) =>
    ListView.separated(
      padding: padding, 
      shrinkWrap: true,
      primary: false,
      itemCount: items.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final item = items[index];
        return buildMenuItem(
          text: item.title,
          icon: item.icon,
          onClicked: () => selectItem(context, indexOffset + index),
        );
      },
    );
      
  void selectItem(BuildContext context, int index) {
    navigateTo(Widget page) => Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );

    switch (index) { //Case 6 logout missing
      case 0:
        navigateTo(HomePage());
        break;
      case 1:
        navigateTo(ShoppingPage());
        break;
      case 2:
        navigateTo(SellPage());
        break;
      case 3:
        navigateTo(ShoppingCartPage());
        break;
      case 4:
        navigateTo(ProfilePage());
        break;
      case 5:
        navigateTo(SettingsPage());
        break;
      case 7:
        navigateTo(RegulatoryPage());
        break;
    }
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
    int indexOffset = 0,
  }) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
        onTap: onClicked,
      ),
    );
  }
}