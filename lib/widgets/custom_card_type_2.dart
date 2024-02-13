import "package:fl_components/themes/app_theme.dart";
import "package:flutter/material.dart";

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      elevation: 8,
      shadowColor: AppTheme.primaryColor.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage("assets/images/jar-loading.gif"),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 200),
          ),
          
          if(name != null) 
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.all(15),
              child: Text(
                name!
              ),
            )
        ],
      ),
    );
  }
}