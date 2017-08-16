module Blp2000 {
  use Random;

  proc main() {
    var player_ids: domain(int);
    var names: [player_ids] string;
    var chiralities: [player_ids] string;
    var dfile = open('../../data/players.txt', iomode.r);

    var i = 0;
    for line in dfile.lines() {
      if (i>0) {
        var fields = line.split(',');
        player_ids += i;
        names[i] = fields[1];
        chiralities[i] = fields[2];
      }
      i = i+1;
    }

    writeln("Standard order... ");
    for ix in player_ids {
      write("player id ", ix);
      writeln("  name ", names[ix]);
    }

    var randomTeam:  [1..player_ids.size] int;
    writeln(randomTeam);
    permutation(randomTeam);
    writeln(randomTeam);
    writeln(randomTeam);
    permutation(randomTeam);
    writeln(randomTeam);

    writeln("Permuted order... ");
    i = 0;
    for ix in randomTeam {
      write("selection ", i);
      write("  player id ", ix);
      writeln("  name ", names[ix]);
      i = i+1;
    }
  }
}
