module Arnoldi {
  use LinearAlgebra;

  proc main() {
    /*
     There is no good reason for this method to be in this project
     */
    writeln("What kind of name is Arnoldi?");
    var A = Matrix(
         [0.0, 0.8, 1.1, 0.0, 2.0]
        ,[0.8, 0.0, 1.3, 1.0, 0.0]
        ,[1.1, 1.3, 0.0, 0.5, 1.7]
        ,[0.0, 1.0, 0.5, 0.0, 1.5]
        ,[2.0, 0.0, 1.7, 1.5, 0.0]
        );


    var k: int = 4;
    var M = Matrix(k,k);
    var q_0 = Vector(k);
    var q_current = Vector(k);
    for i in 1..k-1 {
      q_0[i] = 1/k;
    }

    writeln(A.domain);
    writeln(A.domain(0));

  }
}
