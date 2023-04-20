import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../constants/index.dart';
import '../services/index.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomBar>(
      builder: (context, bottomBar, child) => BottomNavigationBar(
        currentIndex: bottomBar.currentIndex,
          onTap: (index) {
            if (index == 0) {
              bottomBar.changeIndex(index);
              navigationService.navigateReset(context, HOME);
            } else if (index == 1) {
              bottomBar.changeIndex(index);
              navigationService.navigateReset(context, PROFILE);
            }
          },
          selectedItemColor: Theme.of(context).secondaryHeaderColor,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: AppLocalizations.of(context).home),
            BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: AppLocalizations.of(context).profile),
          ]),
    );
  }
}
