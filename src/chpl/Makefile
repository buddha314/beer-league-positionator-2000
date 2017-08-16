BLAS_HOME=/usr/local/Cellar/openblas/0.2.20
CC=chpl
ARNOLDI_EXEC=arnoldi
BLP_EXEC=blp

INCLUDES=-I$(BLAS_HOME)/include
LIBS=-L$(BLAS_HOME)/lib -lblas

all: arnoldi

arnoldi: arnoldi.chpl
	$(CC) $(INCLUDES) $(LIBS) -o $(ARNOLDI_EXEC) $<

blp: blp.chpl
	$(CC) $(INCLUDES) $(LIBS) -o $(BLP_EXEC) $<

run:
	./$(BLP_EXEC)

clean:
	rm $(ARNOLDI_EXEC) $(BLP_EXEC)

