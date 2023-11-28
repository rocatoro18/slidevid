import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slidevid/config/app_theme.dart';
import 'package:slidevid/presentation/providers/discover_provider.dart';
import 'package:slidevid/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ..loadNextPage() ES CONOCIDO COMO OPERADOR DE CASCADA
      providers: [
        ChangeNotifierProvider(
            // PONEMOS LAZY EN FALSE PARA QUE CARGUEN AL INSTANTE LOS PROVIDERS Y NO CUANDO
            // SON LLAMADOS
            // NO ES OBLIGATORIO PONER EL LAZY FALSE
            lazy: false,
            create: (_) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
        title: 'SlideVid',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
