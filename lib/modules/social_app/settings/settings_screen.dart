import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/social_app/cubit/cubit.dart';
import 'package:udemy_flutter/layout/social_app/cubit/states.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/styles/colors.dart';
import 'package:udemy_flutter/shared/styles/icon_broken.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var userModel = SocialCubit.get(context).model;

        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 190.0,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Align(
                        child: Container(
                          height: 140.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                4.0,
                              ),
                              topRight: Radius.circular(
                                4.0,
                              ),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                '${userModel.cover}',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        alignment: AlignmentDirectional.topCenter,
                      ),
                      CircleAvatar(
                        radius: 64.0,
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        child: CircleAvatar(
                          radius: 60.0,
                          backgroundImage: NetworkImage(
                            '${userModel.image}',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${userModel.name}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '${userModel.bio}',
                  style: Theme.of(context).textTheme.caption,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              Text(
                                '100',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Text(
                                'Posts',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              Text(
                                '265',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Text(
                                'Photos',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              Text(
                                '10k',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Text(
                                'Followers',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              Text(
                                '64',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Text(
                                'Followings',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Add Photos',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Icon(
                        IconBroken.Edit,
                        size: 16.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Photos',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'see all',
                        style: Theme.of(context).textTheme.caption.copyWith(
                              color: defaultColor,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children:
                  [
                    Expanded(
                      child: Container(
                        height: 145.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            4.0,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              '${userModel.cover}',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Column(
                        children:
                        [
                          Row(
                            children:
                            [
                              Expanded(
                                child: Container(
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.0,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        '${userModel.cover}',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: Container(
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.0,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        '${userModel.cover}',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children:
                            [
                              Expanded(
                                child: Container(
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.0,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        '${userModel.cover}',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: Container(
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.0,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        '${userModel.cover}',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Posts',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'see all',
                        style: Theme.of(context).textTheme.caption.copyWith(
                          color: defaultColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
