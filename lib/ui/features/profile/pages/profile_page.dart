import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/ui/features/profile/widgets/profile_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              const Text(
                'Jeremiah',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_drop_down),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box_outlined),
              ),
              DrawerButton(
                onPressed: () {},
              ),
            ],
          ),
          scrolledUnderElevation: 9,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
                        ),
                      ),
                      const Text(
                        'Your name',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '346',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Posts'),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            '346',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Followers'),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            '346',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Following'),
                        ],
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProfileButton(
                    text: 'Edit Profile',
                    padding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                  const ProfileButton(
                    text: 'Share Profile',
                    padding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.grey[300],
                    elevation: 0,
                    minWidth: 30,
                    child: const Icon(Icons.person_add),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.grid_on_outlined),
                  ),
                  Tab(
                    child: Icon(Icons.perm_contact_cal_outlined),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: Text('Profile'),
                    ),
                    Center(
                      child: Text('Photos and videos'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
