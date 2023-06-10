import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:troca_de_horario/mural_page.dart';

var now = DateTime.now();
var firstDay = DateTime(now.year, now.month - 3, now.day);
var lastDay = DateTime(now.year, now.month + 3, now.day);

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olá, Thiago!'),
      ),
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('android/assets/Sem título.png'),
              radius: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Thiago Alexandre',
                  style: GoogleFonts.comfortaa(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Horário: 17:00 ás 23:00',
                  style: GoogleFonts.comfortaa(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Matricula: 11555',
                  style: GoogleFonts.comfortaa(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Escala: 6x1',
                  style: GoogleFonts.comfortaa(fontSize: 18),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 50,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text(
                      'Mural de Trocas',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScrollViewExample()),
                      );
                    },
                  ),
                ),
              ],
            ),
            TableCalendar(
              focusedDay: now,
              firstDay: firstDay,
              lastDay: lastDay,
            ),
          ],
        ),
      ),
    );
  }
}
