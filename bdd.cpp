// For BDD encoding

#include <pblib/pb2cnf.h>
#include <iostream>
#include <vector>
#include <fstream>

using namespace std;
using namespace PBLib;  


int main() {
    // PB2CNF pb2cnf;
    // vector< int64_t > weights = {3,-2,7};
    // vector< int32_t > literals = {-1,-2,3};
    // vector< vector< int32_t > > formula;
    // int32_t firstFreshVariable = 4;
    // firstFreshVariable = pb2cnf.encodeGeq(weights, literals, -4, formula, firstFreshVariable) + 1;

    // cout << "First fresh variable: " << firstFreshVariable << endl;


    // vector< int32_t > literals = {-1,-2,3};
    // vector< vector< int32_t > > formula;
    // int32_t firstFreshVariable = 4;
    // int k = 2;
    // firstFreshVariable = pb2cnf.encodeAtMostK(literals, k, formula, firstFreshVariable) + 1;
    
    // cout << formula.size() << endl;

    // for (auto clause : formula) {
    //     for (auto literal : clause) {
    //         cout << literal << " ";
    //     }
    //     cout << endl;
    // }

    PBConfig config = make_shared< PBConfigClass >();
    config->pb_encoder = PB_ENCODER::BDD;
    VectorClauseDatabase formula(config);
    PB2CNF pb2cnf(config);
    AuxVarManager auxvars(11);

    vector< WeightedLit > literals 

    {WeightedLit(1,-7), WeightedLit(-2,5), WeightedLit(-3,9), WeightedLit(-10,-3), WeightedLit(10,7)};

    IncPBConstraint constraint(literals, BOTH, 100, -5);

    pb2cnf.encodeIncInital(constraint, formula, auxvars);

    // for (auto clause : formula.getClauses()) {
    //     for (auto literal : clause) {
    //         cout << literal << " ";
    //     }
    //     cout << endl;
    // }

    // write the formula to a CNF file
    std::ofstream cnfFile("formula_bdd.cnf");
    if (cnfFile.is_open())
    {
        int numVars = 0;
        auto clauses = formula.getClauses();
        cout << clauses.size() << endl;

        for (const auto& clause : clauses)
        {
            for (const auto& var : clause)
            {
                if (abs(var) > numVars)
                {
                    numVars = abs(var);
                }
            }
        }
        cnfFile << "p cnf " << numVars << " " << clauses.size() << "\n";

        for (const auto& clause : formula.getClauses())
        {
            for (const auto& lit : clause)
            {
                cnfFile << lit << " ";
            }
            cnfFile << "0\n"; // End of clause
        }
        cnfFile.close();
    }
    else
    {
        std::cout << "Unable to open file";
    }

    return 0;
}