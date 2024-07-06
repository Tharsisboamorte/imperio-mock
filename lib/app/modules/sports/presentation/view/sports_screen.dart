import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imperio_mock/app/modules/sports/presentation/bloc/sports_bloc.dart';
import 'package:imperio_mock/app/modules/sports/presentation/widgets/sports_container.dart';
import 'package:imperio_mock/core/components/loading_column.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class SportsScreen extends StatefulWidget {
  const SportsScreen({super.key});

  static const routeName = '/sports';

  @override
  State<SportsScreen> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  @override
  void initState() {
    context.read<SportsBloc>().add(const FetchSports());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.gradientTopColor.withOpacity(.21),
        title: Text(
          'Esportes',
          style: context.theme.textTheme.titleSmall,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: BlocConsumer<SportsBloc, SportsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state is SportsLoaded
              ? Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.gradientTopColor.withOpacity(.21),
                        Colors.white,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 25),
                        Container(
                          width: 379,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(48),
                            border: Border.all(
                              color: AppColors.shadowsColor,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search_outlined,
                                color: AppColors.textSecondaryColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: AppColors.borderLightColor,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: AppColors.borderLightColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: AppColors.borderLightColor,
                                ),
                              ),
                              hintText: 'Pesquisar...',
                              hintStyle: const TextStyle(
                                color: AppColors.textDisabled,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: SizedBox(
                            height: double.maxFinite,
                            width: double.maxFinite,
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                              ),
                              itemCount: state.listOfSports.length,
                              itemBuilder: (context, index) {
                                return SportsContainer(
                                  sportsName: state.listOfSports[index].name,
                                  sportsLogo: state.listOfSports[index].image,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const LoadingColumn();
        },
      ),
    );
  }
}
