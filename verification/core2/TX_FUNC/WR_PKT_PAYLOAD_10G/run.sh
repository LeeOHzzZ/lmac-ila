#!/bin/bash
source $HOME/cosa_ve/bin/activate
CoSA --problem problem.txt --solver-name=btor --vcd 
