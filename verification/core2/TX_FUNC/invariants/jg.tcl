analyze -sva wrapper.v
elaborate -top wrapper
clock clk
reset rst
assume { additional_mapping_control_assume__m2__  }
assume { additional_mapping_control_assume__m3__  }
assume { additional_mapping_control_assume__m4__  }
assume { additional_mapping_control_assume__m5__  }
assume { additional_mapping_control_assume__m6__  }
assume { additional_mapping_control_assume__m7__  }
assume { additional_mapping_control_assume__m8__  }
assume { additional_mapping_control_assume__m9__  }
assume { additional_mapping_control_assume__m10__  }
assume { additional_mapping_control_assume__m11__  }
assume { additional_mapping_control_assume__m12__  }
assert { (invariant_assert__p0__ ) && (invariant_assert__p1__ ) }
