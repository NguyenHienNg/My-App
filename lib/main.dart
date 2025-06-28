import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

      @override
        Widget build(BuildContext context) {
            return MaterialApp(
                  debugShowCheckedModeBanner: false,
                              theme: ThemeData(
                                      colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
                                              useMaterial3: true,
                                                    ),
                                                          home: const MyHomePage(title: 'Flutter Demo'),
                                                              );
                                                                }
                                                                }

                                                                class MyHomePage extends StatefulWidget {
                                                                  const MyHomePage({super.key, required this.title});

                                                                    final String title;

                                                                      @override
                                                                        State<MyHomePage> createState() => _MyHomePageState();
                                                                        }

                                                                        class _MyHomePageState extends State<MyHomePage> {
                                                                          int _counter = 0;

                                                                            void _incrementCounter() {
                                                                                setState(() {
                                                                                      _counter++;
                                                                                          });
                                                                                            }

                                                                                              @override
                                                                                                Widget build(BuildContext context) {
                                                                                                    return Scaffold(
                                                                                                          appBar: AppBar(
                                                                                                                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                                                                                                                          title: Text(widget.title),
                                                                                                                                ),
                                                                                                                                      body: Center(
                                                                                                                                              child: Column(
                                                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                                                  children: <Widget>[
                                                                                                                                                                              const Text(
                                                                                                                                                                                            'Bạn đã nhấn nút này với số lần là:',
                                                                                                                                                                                                        ),
                                                                                                                                                                                                                    Text(
                                                                                                                                                                                                                                  '$_counter',
                                                                                                                                                                                                                                                style: Theme.of(context).textTheme.headlineMedium,
                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                        // THAY ĐỔI BẮT ĐẦU TỪ ĐÂY
                                                                                                                                                                                                                                                                                    // Thêm một khoảng trống giữa số đếm và nút mới
                                                                                                                                                                                                                                                                                                const SizedBox(height: 20),
                                                                                                                                                                                                                                                                                                            // Sử dụng ElevatedButton thay vì FloatingActionButton
                                                                                                                                                                                                                                                                                                                        ElevatedButton(
                                                                                                                                                                                                                                                                                                                                      // onPressed vẫn gọi hàm _incrementCounter
                                                                                                                                                                                                                                                                                                                                                    onPressed: _incrementCounter,
                                                                                                                                                                                                                                                                                                                                                                  // style cho phép bạn tùy chỉnh giao diện của nút
                                                                                                                                                                                                                                                                                                                                                                                style: ElevatedButton.styleFrom(
                                                                                                                                                                                                                                                                                                                                                                                                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                                                                                                                                                                                                                                                                                                                                                                                                                textStyle: const TextStyle(fontSize: 18),
                                                                                                                                                                                                                                                                                                                                                                                                                              ),
                                                                                                                                                                                                                                                                                                                                                                                                                                            // child là nội dung bên trong nút, ở đây là một widget Text
                                                                                                                                                                                                                                                                                                                                                                                                                                                          child: const Text('Nhấn vào đây'),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // THAY ĐỔI KẾT THÚC TẠI ĐÂY
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                // Xóa FloatingActionButton ở đây
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      // floatingActionButton: FloatingActionButton( ... ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          );
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
