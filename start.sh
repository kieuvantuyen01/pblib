# Run PBLib with the given input file and the given solver.
# SWC encoding
g++ -I/mnt/1C4070F24070D3CC/Master/pblib/pblib swc.cpp  -L/mnt/1C4070F24070D3CC/Master/pblib/build -lpb -o swc
./swc

# # BDD encoding
# g++ -I/usr/local/include/pblib bdd.cpp  -L/usr/local/lib -lpb -o bdd
# ./bdd
