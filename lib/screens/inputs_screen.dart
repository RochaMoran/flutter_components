import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {

  String? validatorName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo es requerido';
    }
    if (value.length < 3 || value.length > 10) {
      return 'El campo debe contener entre 3 y 10 caracteres';
    }

    return null;
  }
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "name": "Steven Edgardo",
      "lastName": "Rocha Moran",
      "email": "rochamoran1@gmail.com",
      "password": "contasenia",
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomInputField(
                  hintText: "Nombre usuario",
                  labelText: "Nombre",
                  helperText: "Debe contener entre 3 y 10 caracteres",
                  suffixIcon: Icons.person,
                  validatorFn: validatorName,
                  formProperty: "name",
                  formValues: formValues
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: "Apellido usuario",
                  labelText: "Apellido",
                  suffixIcon: Icons.person_3,
                  formProperty: "lastName",
                  formValues: formValues
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: "Correo usuario",
                  labelText: "Correo",
                  suffixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: "email",
                  formValues: formValues
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: "Contraseña usuario",
                  labelText: "Contraseña",
                  suffixIcon: Icons.password,
                  obscureText: true,
                  formProperty: "password",
                  formValues: formValues
                ),
                const SizedBox(height: 30),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value: 'Develop', child: Text('Develop')),
                    DropdownMenuItem(value: 'Jr', child: Text('Jr')),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
            
                ElevatedButton(
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!formKey.currentState!.validate()) {print("form invalido"); return;}

                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Enviar'))
                  )
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

