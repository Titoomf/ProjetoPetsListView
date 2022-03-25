import 'package:flutter/material.dart';
import 'package:pets/my_icons_icons.dart';

import '../../components/custom_card.dart';
import '../../components/custom_listview.dart';
import '../../theme/app_colors.dart';
import '../models/pets/pets_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                right: 20,
                left: 20,
              ),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.11,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textoM,
                            ),
                          ),
                        ),
                        Text(
                          ' Cameron St.,Boston',
                          style: TextStyle(
                            color: AppColors.logogrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/147/147140.png',
                      ).image,

                      // backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: AppColors.grey,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 30,
                      bottom: 20,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Icon(
                              MyIcons.switch_icon,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.background,
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              
                              scrollDirection: Axis.horizontal,
                              children: [
                                // components botao
                                CustomListView(
                                  iconePets: MyIcons.cao,
                                  textIcons: 'Dogs',
                                ),
                                CustomListView(
                                  iconePets: MyIcons.gato,
                                  textIcons: 'cats',
                                ),
                                CustomListView(
                                  iconePets: MyIcons.papagaio,
                                  textIcons: 'Birds',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        CustomCard(
                          pets: PetsModel(
                            name: 'Lucky',
                            ageInMo: 5,
                            breed: 'Golden Retriver',
                            gender: 'Male',
                            images: 'assets/images/golden.jpg',
                            km: 2.5,
                          ),
                        ),
                        CustomCard(
                          pets: PetsModel(
                            name: 'Mel',
                            ageInMo: 1.5,
                            breed: ' Lulu da Pomerânia',
                            gender: 'Famele',
                            images: 'assets/images/viraLata.jpg',
                            km: 2.6,
                          ),
                        ),
                        CustomCard(
                          pets: PetsModel(
                            name: 'Renzo',
                            ageInMo: 2.5,
                            breed: 'Boston Terrier',
                            gender: 'Male',
                            images: 'assets/images/boston.jpg',
                            km: 2.0,
                          ),
                        ),
                        CustomCard(
                          pets: PetsModel(
                            name: 'Renzo',
                            ageInMo: 2.5,
                            breed: 'Boston Terrier',
                            gender: 'Male',
                            images: 'assets/images/husky.jpg',
                            km: 2.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
