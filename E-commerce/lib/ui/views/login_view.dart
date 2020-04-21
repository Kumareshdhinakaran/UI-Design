import 'package:provider_architecture/provider_architecture.dart';
import 'package:udecor/constants/route_names.dart';
import 'package:udecor/locator.dart';
import 'package:udecor/services/navigation_service.dart';
import 'package:udecor/ui/shared/ui_helpers.dart';
import 'package:udecor/ui/widgets/busy_button.dart';
import 'package:udecor/ui/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:udecor/viewmodels/login_view_model.dart';

class LoginView extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final NavigationService _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<LoginViewModel>.withConsumer(
      viewModel: LoginViewModel(),
      builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 93,
                    child: Image.asset('assets/images/title.png'),
                  ),
                  InputField(
                    placeholder: 'Email',
                    controller: emailController,
                  ),
                  verticalSpaceSmall,
                  InputField(
                    placeholder: 'Password',
                    password: true,
                    controller: passwordController,
                  ),
                  verticalSpaceMedium,
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BusyButton(
                        title: 'Login',
                        busy: model.busy,
                        onPressed: () {
                          model.login(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                        },
                      )
                    ],
                  ),
                  verticalSpaceMedium,
                  BusyButton(
                    onPressed: () =>
                        _navigationService.navigateTo(SignUpViewRoute),
                    title: 'Create an Account if you\'re new.',
                  )
                ],
              ),
            ),
          )),
    );
  }
}
