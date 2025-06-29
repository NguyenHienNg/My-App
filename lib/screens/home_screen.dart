import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/note_provider.dart';
import '../providers/theme_provider.dart';
import '../widgets/add_note_sheet.dart';
import '../widgets/note_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ghi chú'),
        actions: [
          // Nút chuyển đổi chế độ Sáng/Tối
          IconButton(
            icon: Icon(
              Provider.of<ThemeProvider>(context).themeMode == ThemeMode.light
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined,
            ),
            onPressed: () {
              final provider = Provider.of<ThemeProvider>(context, listen: false);
              provider.setThemeMode(
                provider.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
              );
            },
          ),
        ],
      ),
      body: Consumer<NoteProvider>(
        builder: (context, noteProvider, child) {
          if (noteProvider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (noteProvider.notes.isEmpty) {
            return const Center(child: Text('Bạn có ghi chú nào. Hãy tạo một ghi chú mới!'));
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: noteProvider.notes.length,
            itemBuilder: (context, index) {
              final note = noteProvider.notes[index];
              return NoteCard(note: note);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showAddNoteSheet(context),
        label: const Text('Tạo ghi chú'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}