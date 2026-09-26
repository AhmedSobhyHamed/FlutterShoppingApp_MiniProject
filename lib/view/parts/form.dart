import 'package:flutter/material.dart';
import 'package:first_flutter_project/service/validators.dart';
import 'package:first_flutter_project/view/parts/text_dialog.dart';
import 'package:first_flutter_project/view/phase_two.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible = false;
  String _heroTag = 'hero_dialog_failure';

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final success = _formKey.currentState!.validate();
    setState(() {
      _heroTag = success ? 'hero_dialog_success' : 'hero_dialog_failure';
    });

    await showDialog<void>(
      context: context,
      builder: (context) => TextDialog(
        message: success
            ? 'Account created successfully'
            : 'Account creation failed',
      ),
    );
    if (!mounted) return;

    final navigator = Navigator.of(context);
    if (success) {
      navigator.pushReplacement(
        MaterialPageRoute<void>(builder: (context) => const PhaseTwo()),
      );
      return;
    }
    navigator.pop();
  }

  Widget _buildTextField(String label, TextEditingController controller, String? Function(String?)? validator, [bool isPassword = false]) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 400.0,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          child: isPassword ? _passwordField(label, controller, validator) : _textField(label, controller, validator),
        ),
      ),
    );
  }

  TextFormField _textField(String label, TextEditingController controller, String? Function(String?)? validator) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      validator: validator,
    );
  }

  TextFormField _passwordField(String label, TextEditingController controller, String? Function(String?)? validator) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        labelText: label, 
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          }, 
          icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off)
        )
      ),
      obscureText: !_isPasswordVisible,
      onFieldSubmitted: (value) {
        setState(() {
          _isPasswordVisible = !_isPasswordVisible;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 20,
        children: [
          _buildTextField('Full Name', _fullNameController, FullNameValidator.validate),
          _buildTextField('Email', _emailController, EmailValidator.validate),
          _buildTextField('Password', _passwordController, PasswordValidator.validate, true),
          _buildTextField('Confirm Password', _confirmPasswordController, (value) => ConfirmPasswordValidator.validate(value, _passwordController.text), true),
          ElevatedButton(
            onPressed: _submit,
            child: Hero(
              tag: _heroTag,
              child: Material(
                type: MaterialType.transparency,
                child: const Text('Submit'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
