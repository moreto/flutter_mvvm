import 'package:flutter/material.dart';
import 'package:flutter_mvvm/routing/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../core/themes/colors.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, elevation: 0, centerTitle: true, backgroundColor: Theme.of(context).scaffoldBackgroundColor),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go(Routes.login);
                    },
                    child: SizedBox(
                      height: 65,
                      width: MediaQuery.sizeOf(context).width / 2 - 32,
                      child: Card(
                        color: AppColors.kWhite,
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: AppColors.kWhite, width: 1.0)),
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Icon(MdiIcons.security, color: AppColors.kPrimary), Text('login', style: Theme.of(context).textTheme.labelMedium)],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      context.push(Routes.note);
                    },
                    child: SizedBox(
                      height: 65,
                      width: MediaQuery.sizeOf(context).width / 2 - 32,
                      child: Card(
                        color: AppColors.kWhite,
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: AppColors.kWhite, width: 1.0)),
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Icon(MdiIcons.note, color: AppColors.kPrimary), Text('note', style: Theme.of(context).textTheme.labelMedium)],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.push(Routes.banks);
                    },
                    child: SizedBox(
                      height: 65,
                      width: MediaQuery.sizeOf(context).width / 2 - 32,
                      child: Card(
                        color: AppColors.kWhite,
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: AppColors.kWhite, width: 1.0)),
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Icon(MdiIcons.bank, color: AppColors.kPrimary), Text('bank', style: Theme.of(context).textTheme.labelMedium)],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      context.push(Routes.feriados);
                    },
                    child: SizedBox(
                      height: 65,
                      width: MediaQuery.sizeOf(context).width / 2 - 32,
                      child: Card(
                        color: AppColors.kWhite,
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: AppColors.kWhite, width: 1.0)),
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Icon(MdiIcons.calendar, color: AppColors.kPrimary), Text('feriados', style: Theme.of(context).textTheme.labelMedium)],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
