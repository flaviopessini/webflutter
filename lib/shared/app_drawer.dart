import 'package:flutter/material.dart';
import 'package:webflutter/views/accounts/accounts_page.dart';
import 'package:webflutter/views/contacts/contacts_page.dart';
import 'package:webflutter/views/home/home_page.dart';
import 'package:webflutter/views/users/users_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          DrawerHeader(
            child: Stack(
              children: [
                const Center(
                  child: Text('https://github.com/flaviopessini'),
                ),
                IconButton(
                  onPressed: () => Scaffold.of(context).closeDrawer(),
                  icon: const Icon(Icons.menu_open_rounded),
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ],
            ),
          ),
          DrawerListItem(
            title: 'Início',
            leading: const Icon(Icons.home_rounded),
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => const HomePage()),
              (route) => false,
            ),
          ),
          DrawerListItem(
            title: 'Contas',
            leading: const Icon(Icons.manage_accounts_rounded),
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => const AccountsPage()),
              (route) => false,
            ),
          ),
          DrawerListItem(
            title: 'Usuários',
            leading: const Icon(Icons.person_outline_rounded),
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => const UsersPage()),
              (route) => false,
            ),
          ),
          DrawerListItem(
            title: 'Contatos',
            leading: const Icon(Icons.contact_page_rounded),
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => const ContactsPage()),
              (route) => false,
            ),
          ),
          DrawerListItem(
            title: 'Sair',
            leading: const Icon(Icons.logout_rounded),
            onTap: () async {
              final confirm = await showDialog<bool>(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('Deseja sair?'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text('Não')),
                        TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text('Sim')),
                      ],
                    );
                  });

              if (confirm == true) {
                //
              }
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListItem extends StatelessWidget {
  final String title;
  final bool? enabled;
  final Widget? leading;
  final Widget? trailing;
  final String? subtitle;
  final void Function()? onTap;

  const DrawerListItem({
    super.key,
    required this.title,
    this.enabled = true,
    this.leading,
    this.trailing,
    this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: Theme.of(context).colorScheme.onSecondary,
      textColor: Theme.of(context).colorScheme.onSecondary,
      enabled: enabled!,
      leading: leading,
      trailing: trailing,
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      onTap: onTap,
    );
  }
}
