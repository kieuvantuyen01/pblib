// // For SWC encoding

// #include <pblib/pb2cnf.h>
// #include <iostream>
// #include <vector>
// #include <fstream>

// using namespace std;
// using namespace PBLib;  


// int main() {
//     // PB2CNF pb2cnf;
//     // vector< int64_t > weights = {3,-2,7};
//     // vector< int32_t > literals = {-1,-2,3};
//     // vector< vector< int32_t > > formula;
//     // int32_t firstFreshVariable = 4;
//     // firstFreshVariable = pb2cnf.encodeGeq(weights, literals, -4, formula, firstFreshVariable) + 1;

//     // cout << "First fresh variable: " << firstFreshVariable << endl;


//     // vector< int32_t > literals = {-1,-2,3};
//     // vector< vector< int32_t > > formula;
//     // int32_t firstFreshVariable = 4;
//     // int k = 2;
//     // firstFreshVariable = pb2cnf.encodeAtMostK(literals, k, formula, firstFreshVariable) + 1;
    
//     // cout << formula.size() << endl;

//     // for (auto clause : formula) {
//     //     for (auto literal : clause) {
//     //         cout << literal << " ";
//     //     }
//     //     cout << endl;
//     // }

//     PBConfig config = make_shared< PBConfigClass >();
//     config->pb_encoder = PB_ENCODER::SWC;
//     VectorClauseDatabase formula(config);
//     PB2CNF pb2cnf(config);
//     AuxVarManager auxvars(11);

//     vector< WeightedLit > literals 

//     {WeightedLit(1,-7), WeightedLit(-2,5), WeightedLit(-3,9), WeightedLit(-10,-3), WeightedLit(10,7)};

//     IncPBConstraint constraint(literals, BOTH, 100, -5);

//     pb2cnf.encodeIncInital(constraint, formula, auxvars);

//     constraint.encodeNewGeq(3, formula, auxvars);
//     constraint.encodeNewLeq(8, formula, auxvars);

//     constraint.addConditional(5);
//     constraint.addConditional(-6);
//     // for (auto clause : formula.getClauses()) {
//     //     for (auto literal : clause) {
//     //         cout << literal << " ";
//     //     }
//     //     cout << endl;
//     // }

//     // Print the encoder
//     cout << "Encoder: " << config->pb_encoder << endl;
    
//     // write the formula to a CNF file
//     std::ofstream cnfFile("formula_swc.cnf");
//     if (cnfFile.is_open())
//     {
//         int numVars = 0;
//         auto clauses = formula.getClauses();
//         cout << clauses.size() << endl;

//         for (const auto& clause : clauses)
//         {
//             for (const auto& var : clause)
//             {
//                 if (abs(var) > numVars)
//                 {
//                     numVars = abs(var);
//                 }
//             }
//         }
//         cnfFile << "p cnf " << numVars << " " << clauses.size() << "\n";

//         for (const auto& clause : formula.getClauses())
//         {
//             for (const auto& lit : clause)
//             {
//                 cnfFile << lit << " ";
//             }
//             cnfFile << "0\n"; // End of clause
//         }
//         cnfFile.close();
//     }
//     else
//     {
//         std::cout << "Unable to open file";
//     }

//     return 0;
// } 

#include "pblib/pb2cnf.h"
#include <fstream>
#include <sstream>
#include <regex>

using namespace std;
using namespace PBLib;



int main() {
    PBConfig config = make_shared< PBConfigClass >();
    config->pb_encoder = PB_ENCODER::SWC;
    AuxVarManager auxvars(1);
    PB2CNF pb2cnf(config);
    VectorClauseDatabase formula(config);

    ifstream opbFile("./benchmarks/normalized-fir03_trarea_ac.opb");
    ofstream cnfFile("./CNF files/cpp_swc_normalized-fir03_trarea_ac.cnf");

    string line;
    getline(opbFile, line);
    regex header_re("(.*)\\s*#variable=\\s*(\\d+)\\s*#constraint=\\s*(\\d+)\\s*");
    smatch match;
    regex_search(line, match, header_re);
    auxvars.resetAuxVarsTo(stoi(match[2]) + 1);

    while (getline(opbFile, line)) {
        if (line[0] == '*' || line.substr(0, 4) == "min:") continue;

        regex term_re("([+-]?\\d)\\s+x(\\d+)");
        regex ind_term_re("([>=|<=|=]+)\\s+([+-]?\\d+)");
        vector<WeightedLit> literals;
        string op;
        int64_t rhs;

        auto term_begin = sregex_iterator(line.begin(), line.end(), term_re);
        auto term_end = sregex_iterator();
        for (sregex_iterator i = term_begin; i != term_end; ++i) {
            smatch match = *i;
            int32_t coeff = stoi(match[1]);
            int32_t var = stoi(match[2]);
            literals.push_back(WeightedLit(var, coeff));
        }

        smatch ind_match;
        regex_search(line, ind_match, ind_term_re);
        if (ind_match.empty()) {
            op = "=";
            rhs = 0;
        } else {
            op = ind_match[1];
            rhs = stoi(ind_match[2]);
        }

        PBConstraint constraint(literals, op == "<=" ? LEQ : op == ">=" ? GEQ : BOTH, rhs);
        cout << "Before encoding constraint" << endl;
        pb2cnf.encode(constraint, formula, auxvars);
        cout << "Encoded constraint" << endl;
    }

    // Write the formula to the CNF file
    if (cnfFile.is_open()) {
        int numVars = auxvars.getBiggestReturnedAuxVar();
        auto clauses = formula.getClauses();

        cnfFile << "p cnf " << numVars << " " << clauses.size() << "\n";

        for (const auto& clause : formula.getClauses()) {
            for (const auto& lit : clause) {
                cnfFile << lit << " ";
            }
            cnfFile << "0\n"; // End of clause
        }
        cnfFile.close();
    } else {
        cout << "Unable to open file" << endl;
    }

    return 0;
}

// #include <iostream>
// #include <unordered_map>
// #include <vector>
// #include <string>

// #include "PBParser.h"
// #include "pb2cnf.h"

// using namespace std;
// using namespace PBLib;

// int main(int argc, char **argv)
// {
//     unordered_map<string,string> options;

//     // if (argc > 2)
//     // {
//     //     string tmp;
//     //     for (int i = 2; i < argc; ++i)
//     //     {
//     //         tmp = string(argv[i]);
//     //         while (tmp[0] == '-')
//     //             tmp = tmp.substr(1);	

//     //         options[tmp.substr(0,tmp.find("="))] = tmp.find("=") == string::npos ? "" : tmp.substr(tmp.find("=") + 1);
//     //     }
//     // }

//     // if (argc < 2)
//     // {
//     //     cout << "usage " << argv[0] << " inputfile [options]" << endl;
//     //     return -1;
//     // }

//     std::shared_ptr<PBConfigClass> config = std::make_shared<PBConfigClass>();
//     VectorClauseDatabase formula(config);

//     PBParser parser;

//     // declare input file path
//     const char* inputFilePath = "./benchmarks/normalized-fir03_trarea_ac.opb";

//     vector<PBConstraint> constraints = parser.parseFile(inputFilePath);

//     if (!parser.isOk())
//     {
//         cout << endl << "c error: could not parse input file" << endl;
//         return -1;
//     }

//     PB2CNF pb2cnf(config);
//     AuxVarManager auxvars(parser.getMaxVarID() + 1);

//     for(int i = 0; i < (int) constraints.size(); ++i)
//     {
//         pb2cnf.encode(constraints[i], formula, auxvars);
//     }

//     cout << "p cnf " <<  auxvars.getBiggestReturnedAuxVar() << " " << formula.getClauses().size() << endl;

//     for (auto clause : formula.getClauses())
//     {
//         for (auto lit : clause)
//             cout << lit << " ";
//         cout << "0" << endl;
//     }

//     return 0;
// }