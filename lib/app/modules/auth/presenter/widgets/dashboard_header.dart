import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 422,
      width: double.maxFinite,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            SizedBox(
              height: context.height * .4,
              width: context.height * .37,
              child: const Image(
                fit: BoxFit.fitHeight,
                image: AssetImage(MediaRes.loginHeader),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 67),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                    color: Colors.white,
                    style: const ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: MaterialStatePropertyAll(
                        Colors.transparent,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: context.height * .20,
                    ),
                    child: Text(
                      'Entre\nem sua conta',
                      style: TextStyle(
                        fontFamily: GoogleFonts.archivoNarrow().fontFamily,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      'Acompanhe seus jogos,\ncampeonatos e times favoritos',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
