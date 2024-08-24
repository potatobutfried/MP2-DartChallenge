import 'dart:math';

// Implement the Song class
class Song {
  String title;
  String artist;

  Song(this.title, this.artist);

  @override
  String toString() {
    return '$title by $artist';
  }
}

// Implement the Playlist class
class Playlist {
  String name;
  List<Song> songs;

  Playlist(this.name, this.songs);

  void addSong(Song song) {
    songs.add(song);
  }

  void removeSong(Song song) {
    songs.remove(song);
  }

  void displaySongs() {
    print('Playlist: $name');
    for (var song in songs) {
      print(song);
    }
  }
}

// Implement the MusicFestival class
class MusicFestival {
  String name;
  List<Playlist> stages;

  MusicFestival(this.name, this.stages);

  void addStage(Playlist playlist) {
    stages.add(playlist);
  }

  void displayFestival() {
    print('Music Festival: $name');
    for (var stage in stages) {
      stage.displaySongs();
      print('');
    }
  }
}

void main() {
  // Create songs
  var song1 = Song('Bulong', 'December Avenue,  4:10', );  
  var song2 = Song('Saksi Ang langit', 'December Avenue, 5:04 ');
  var song3 = Song('Museo', 'Eliza Maturan 3:50');
  var song4 = Song('Umaasa', 'Calein, 3:40');
  var song5 = Song('Sining', 'Dionela, 3:49');
  var song6 = Song('We made It', 'Nik Makino, 3:10');
  var song7 = Song('Burgis', 'Flow G, 3:40');
  var song8 = Song('Teka lang', 'Emman nimedez, 3:34');
  var song9 = Song('Nadarang', 'Shanti dope, 3:58');
  var song10 = Song('Saan', 'Maki, 2:50');
  var song11 = Song('Pantropiko', 'BINI, 3:40');
  var song12 = Song('Karera', 'BINI, 3:45');
  var song13 = Song('Salamin Salamin', 'BINI, 3:20');
  var song14 = Song('Maharani', 'alamat, 3:05');
  var song15 = Song('Ginto', 'Sb19, 3:59');

  // Create playlists
  var loveSongs = Playlist('Love Songs 1st Groups to sing',  [song1, song2, song3, song4, song5]);
  var hipHop = Playlist('Hip Hop 2nd Groups to sing', [song6, song7, song8, song9, song10]);
  var hardcore = Playlist('P-pop 3rd Groups to sing', [song11, song12, song13, song14, song15]);

  // Create music festival
  var musicFestival = MusicFestival('Awesome Music Festival', [loveSongs, hipHop, hardcore]);

  // Display the music festival
  print('Welcome to the Music Festival Playlist Manager!');
  print('Total Festival Duration: 3114 Seconds');
  musicFestival.displayFestival();
}
