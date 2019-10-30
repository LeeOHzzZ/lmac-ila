analyze -sva wrapper.v
elaborate -top wrapper
clock clk
reset rst
assume { noreset__m0__  }
assume { variable_map_assume__m2__  }
assume { variable_map_assume__m4__  }
assume { variable_map_assume__m6__  }
assume { variable_map_assume__m9__  }
assume { variable_map_assume__m11__  }
assume { variable_map_assume__m13__  }
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
assume { issue_decode__m33__  }
assume { issue_valid__m34__  }
assume { post_value_holder__m35__  }
assert { (variable_map_assert__p15__ ) && (variable_map_assert__p17__ ) && (variable_map_assert__p20__ ) && (variable_map_assert__p22__ ) }
