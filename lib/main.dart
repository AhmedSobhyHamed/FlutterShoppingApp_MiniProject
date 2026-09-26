import 'package:first_flutter_project/core/scroll_page_view.dart';
import 'package:first_flutter_project/l10n/app_locale.dart';
import 'package:first_flutter_project/view/phase_one.dart';
import 'package:first_flutter_project/view/phase_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization _localization = FlutterLocalization.instance;

  @override
  void initState() {
    super.initState();
    _localization.init(
      initLanguageCode: 'en',
      source: LocalizationSource.jsonAsset,
      jsonLocales: const [
        JsonLocale('en', 'assets/i18n/en.json'),
        JsonLocale('ar', 'assets/i18n/ar.json'),
      ],
    );
    _localization.onTranslatedLanguage = _onTranslatedLanguage;
  }

  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: _localization.currentLocale,
      supportedLocales: _localization.supportedLocales,
      localizationsDelegates: _localization.localizationsDelegates,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      scrollBehavior: ScrollPageViewBehavior(),
      home: const HomeShell(),
    );
  }
}

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _selectedIndex = 0;

  static const _pages = <Widget>[
    PhaseOne(),
    PhaseTwo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.looks_one_outlined),
            selectedIcon: const Icon(Icons.looks_one),
            label: AppLocale.phaseOne.getString(context),
          ),
          NavigationDestination(
            icon: const Icon(Icons.looks_two_outlined),
            selectedIcon: const Icon(Icons.looks_two),
            label: AppLocale.phaseTwo.getString(context),
          ),
        ],
      ),
    );
  }
}
