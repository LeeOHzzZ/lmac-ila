analyze -sva wrapper.v
elaborate -top wrapper
clock clk
reset rst
assume { noreset__m0__  }
assume { variable_map_assume__m2__  }
assume { variable_map_assume__m4__  }
assume { variable_map_assume__m6__  }
assume { variable_map_assume__m8__  }
assume { variable_map_assume__m10__  }
assume { variable_map_assume__m12__  }
assume { invariant_assume__m21__  }
assume { additional_mapping_control_assume__m22__  }
assume { additional_mapping_control_assume__m23__  }
assume { additional_mapping_control_assume__m24__  }
assume { additional_mapping_control_assume__m25__  }
assume { additional_mapping_control_assume__m26__  }
assume { additional_mapping_control_assume__m27__  }
assume { additional_mapping_control_assume__m28__  }
assume { additional_mapping_control_assume__m29__  }
assume { additional_mapping_control_assume__m30__  }
assume { additional_mapping_control_assume__m31__  }
assume { additional_mapping_control_assume__m32__  }
assume { additional_mapping_control_assume__m33__  }
assume { additional_mapping_control_assume__m34__  }
assume { issue_decode__m35__  }
assume { issue_valid__m36__  }
assume { post_value_holder__m37__  }
assert { (variable_map_assert__p14__ ) && (variable_map_assert__p16__ ) && (variable_map_assert__p18__ ) && (variable_map_assert__p20__ ) }
