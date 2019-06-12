# Instruction-Level Abstraction (ILA) of LMAC
This ILA description is derived based on the LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL. 
Check below for further detail:

-   [LMAC_CORE1](https://github.com/lewiz-support/LMAC_CORE1)
-   [LMAC_CORE2](https://github.com/lewiz-support/LMAC_CORE2)

## Build
To build this ILA model, create a build directory and run:

``` bash
mkdir -p build && cd build
cmake ..
make
```

The output is an executable `lmac`, which can be used to generate the LMAC ILA and the verification target for equivalence checking. 

``` bash
./lamc --design_path <DESIGN> --output_path <OUTPUT> --instr_map <INSTR> --var_map <VAR>
```

To generate the verification target, you need to provide:

- `DESIGN`: path to the Verilog design. (Default: `lmac-ila/design`)
- `OUTPUT`: path to the generated verification target. (Default: `lmac-ila/verification`)
- `INSTR`: instruction mapping file.
- `VAR`: variable mapping file.
