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

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context);
    final isCollapsed = provider.isCollapsed;
    final safeArea = EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    return SizedBox(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: const Color(0xFF262AAA),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 74, horizontal: 20).add(safeArea),
                width: double.infinity,
                color: Colors.white12,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 24),
              buildList(items: itemsFirst, isCollapsed: isCollapsed),
              const SizedBox(height: 24),
              Divider(color: Colors.white70),
              const SizedBox(height: 24),
              buildList(indexOffset: itemsFirst.length, items: itemsSecond, isCollapsed: isCollapsed),  
              const Spacer(),
              buildCollapseIcon(context, isCollapsed),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) => Row(
    children: [
      const SizedBox(height: 24),
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

  Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
    const double size = 52;
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : const EdgeInsets.only(right: 16);
    final width = isCollapsed ? double.infinity : size;

    return Container(
      alignment: alignment,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: SizedBox(
            width: width,
            height: size,
            child: Icon(icon, color: Colors.white),
          ),
          onTap: () {
            final provider = Provider.of<NavigationProvider>(context, listen: false);
            provider.toggleIsCollapsed();
          },
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
    int indexOffset = 0,
  }) =>
    ListView.separated(
      padding: isCollapsed ? EdgeInsets.zero : padding, 
      shrinkWrap: true,
      primary: false,
      itemCount: items.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final item = items[index];
        return buildMenuItem(
          text: item.title,
          icon: item.icon,
          isCollapsed: isCollapsed,
          onClicked: () => selectItem(context, indexOffset + index),
            // Hier könntest du eine Aktion beim Klicken ausführen
        );
      },
    );
      
void selectItem(BuildContext context, int index) {
  navigateTo(Widget page) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => page),
  );

  switch (index) {
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
  }
}

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required bool isCollapsed,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final leading = Icon(icon, color: color);

    return Material(
      color: Colors.transparent,
      child: isCollapsed
          ? ListTile(
              title: leading,
              onTap: onClicked,
      )
          : ListTile(
              leading: leading,
              title: Text(text, style: TextStyle(color: color, fontSize: 16)),
              onTap:  onClicked,
      ),
    );
  }
}