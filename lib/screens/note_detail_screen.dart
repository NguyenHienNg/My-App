// lib/screens/note_detail_screen.dart

import 'package:flutter/material.dart';
import '../models/note.dart'; // Import model Note
import 'package:intl/intl.dart'; // Import để định dạng ngày tháng

class NoteDetailScreen extends StatelessWidget {
  final Note note; // Màn hình này sẽ nhận một đối tượng Note

  const NoteDetailScreen({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Hiển thị tiêu đề của ghi chú trên AppBar
        title: Text(note.title),
      ),
      body: SingleChildScrollView( // Dùng SingleChildScrollView để nội dung dài có thể cuộn
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hiển thị lại tiêu đề
            Text(
              note.title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Hiển thị ngày tạo
            Text(
              'Tạo lúc: ${DateFormat.yMMMMEEEEd().add_jm().format(note.createdAt)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 24),
            // Hiển thị vạch kẻ ngang
            const Divider(),
            const SizedBox(height: 24),
            // Hiển thị nội dung chính của ghi chú
            Text(
              note.content,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                height: 1.5, // Tăng chiều cao dòng để dễ đọc
              ),
            ),
          ],
        ),
      ),
    );
  }
}