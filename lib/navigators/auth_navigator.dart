import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vix_m/bloc/auth_bloc.dart';
import 'package:vix_m/states/auth_states.dart';
import 'package:vix_m/screens/authScreens/login_view.dart';
import 'package:vix_m/screens/authScreens/signup_view.dart';
import 'package:vix_m/screens/authScreens/splash_view.dart';
import 'package:vix_m/navigators/app_wrapper.dart';

class AuthNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return Navigator(
        pages: [
          if (state is InitialState) MaterialPage(child: SplashView()),
          if (state is NotLogged) MaterialPage(child: LoginView()),
          if (state is LoginFailed) MaterialPage(child: LoginView()),
          if (state is NotRegistered) MaterialPage(child: SignUpView()),
          if (state is Logged) MaterialPage(child: AppWrapper())
        ],
        onPopPage: (route, result) => route.didPop(result),
      );
    });
  }
}
