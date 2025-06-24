import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String userName;

  HomePage({super.key, required this.userName});

  // Example list of South African banks
  final List<Map<String, String>> banks = [
    {'name': 'ABSA', 'logo': 'assets/images/absa.png'},
    {'name': 'FNB', 'logo': 'assets/images/fnb.png'},
    {'name': 'Standard Bank', 'logo': 'assets/images/standardbank.png'},
    {'name': 'Nedbank', 'logo': 'assets/images/nedbank.png'},
    {'name': 'Capitec', 'logo': 'assets/images/capitec.png'},
    {'name': 'TymeBank', 'logo': 'assets/images/tymebank.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $userName'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, size: 30),
            onPressed: () {
              // TODO: Navigate to profile or settings
            },
          )
        ],
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Available Banks',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: banks.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final bank = banks[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: InkWell(
                      onTap: () {
                        _showConnectDialog(context, bank['name']!);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            bank['logo']!,
                            height: 60,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            bank['name']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {
                              _showConnectDialog(context, bank['name']!);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            child: const Text('Connect'),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showConnectDialog(BuildContext context, String bankName) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Connect to $bankName'),
          content: const Text('Proceed to link your bank account?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                // TODO: Handle actual bank linking logic
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$bankName account connected!')),
                );
              },
              child: const Text('Connect'),
            ),
          ],
        );
      },
    );
  }
}
