import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("User 1"),
          accountEmail: Text("user1@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-businessman-user-avatar-wearing-suit-with-red-tie-png-image_5809521.png"),
          ),
        ),
        Divider(),
        ListTile(
          title: Text("Gestion Couleur"),
          leading: Icon(Icons.color_lens),
          onTap: () {
            Navigator.of(context).pushNamed('/pagecouleur');
          },
        ),
        ListTile(
          title: Text("Gestion Compteur"),
          leading: Icon(Icons.numbers),
          onTap: () {
            Navigator.of(context).pushNamed('/pagecompteur');
          },
        ),
        ListTile(
          title: Text("Gestion Produit"),
          leading: Icon(Icons.production_quantity_limits),
          onTap: () {
            Navigator.of(context).pushNamed('/pageajoutproduit');
          },
        ),
      ],
    ));
  }
}
