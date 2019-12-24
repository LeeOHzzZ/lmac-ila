analyze -sva bug_hunt.v
elaborate -top TX_FUNC
clock clk
reset -expression {:global_formal_reset} rst
assume {state_c1}
assume {state_c2}
assume {state_c3}
assume {state_c4}
assume {state_c5}
assume {wcnt_c1}
assume {not_empty_start}
assume {b2b_not_neg}
assume {b2b_ok_c1}
assume {mode}

assert {instr_valid}
