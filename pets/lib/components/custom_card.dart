import 'package:flutter/material.dart';

import 'package:pets/theme/app_colors.dart';

import '../modules/models/pets/pets_model.dart';
import '../my_icons_icons.dart';

class CustomCard extends StatelessWidget {
  final PetsModel pets;

  const CustomCard({
    Key? key,
    required this.pets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconHeart = MyIcons.heart_empty;
    return Padding(
      padding: const EdgeInsets.only(
        // tamanho do card branco
        left: 30,
        right: 20,
      ),
      child: Container(
        // tamanho do card da caixa dos animais
        height: 170,

        margin: const EdgeInsets.only(
          top: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: AppColors.background,
        ),
        // dentro do card ele faz o espacamento
        child: Padding(
          padding: const EdgeInsets.all(
            15,
          ),
          child: Row(
            children: [
              // container do caixa do card
              Container(
                clipBehavior: Clip.hardEdge,
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image(
                  image: AssetImage(
                    pets.images,
                  ),
                  fit: BoxFit.fill,
                ),

                //Imagem dentro do container,
              ),
              Container(
                // o conjunto dentro do card textos e icones
                margin: EdgeInsets.only(
                  left: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 150),
                      child: Row(
                        children: [
                          Icon(
                            iconHeart,
                            color: AppColors.menorIcon,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      pets.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      pets.breed,
                      style: TextStyle(
                        color: AppColors.logogrey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${pets.gender} , ${pets.ageInMo} months old',
                      style: TextStyle(
                        color: AppColors.textoM,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 22,
                            color: AppColors.primaryColor,
                          ),
                          Text(
                            '${pets.km} Kms away',
                            style: TextStyle(
                              color: AppColors.menorIcon,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
