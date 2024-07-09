import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  runApp(AudioPlayerApp());
}

class AudioPlayerApp extends StatelessWidget {
  const AudioPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Audio Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AudioPlayerScreen(
        audio: '',
        title: "jas vida",
      ),
    );
  }
}

class AudioPlayerScreen extends StatefulWidget {
  final String audio;
  final String title;
  const AudioPlayerScreen(
      {super.key, required this.audio, required this.title});

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  late AudioPlayer _audioPlayer;
  late Stream<DurationState> _durationStateStream;
  final ValueNotifier<PlayerState?> _playerState = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.playerStateStream.listen((state) {
      _playerState.value = state;
    });
    _audioPlayer.setUrl(
      'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
    );

    _durationStateStream =
        Rx.combineLatest2<Duration?, Duration?, DurationState>(
      _audioPlayer.positionStream,
      _audioPlayer.durationStream,
      (position, duration) => DurationState(position, duration),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Player'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Now Playing',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Icon(
              Icons.music_note,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            StreamBuilder<DurationState>(
              stream: _durationStateStream,
              builder: (context, snapshot) {
                final durationState = snapshot.data;
                final position = durationState?.position ?? Duration.zero;
                final duration = durationState?.duration ?? Duration.zero;

                return Column(
                  children: [
                    Slider(
                      min: 0.0,
                      max: duration.inMilliseconds.toDouble(),
                      value: position.inMilliseconds.toDouble(),
                      onChanged: (value) {
                        _audioPlayer
                            .seek(Duration(milliseconds: value.round()));
                      },
                    ),
                    Text(
                      '${_printDuration(position)} / ${_printDuration(duration)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder(
              builder: (context, snapshot, data) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    snapshot?.playing == true
                        ? IconButton(
                            icon: const Icon(Icons.pause),
                            iconSize: 64,
                            onPressed: () {
                              if (snapshot?.playing == true) {
                                _audioPlayer.pause();
                              } else {
                                _audioPlayer.play();
                              }
                            },
                          )
                        : IconButton(
                            icon: const Icon(Icons.play_arrow),
                            iconSize: 64,
                            onPressed: () {
                              _audioPlayer.play();
                            },
                          ),
                  ],
                );
              },
              valueListenable: _playerState,
            ),
          ],
        ),
      ),
    );
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
  }
}

class DurationState {
  final Duration? position;
  final Duration? duration;

  DurationState(this.position, this.duration);
}
