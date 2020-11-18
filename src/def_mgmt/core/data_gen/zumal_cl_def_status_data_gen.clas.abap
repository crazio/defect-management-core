CLASS zumal_cl_def_status_data_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES zumal_if_standard_data_gen.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zumal_cl_def_status_data_gen IMPLEMENTATION.

  METHOD zumal_if_standard_data_gen~generate_data.
    DATA: lt_def_status TYPE STANDARD TABLE OF zumal_t_def_sts.

    DELETE FROM zumal_t_def_sts.

    lt_def_status = VALUE #( ( code = '1' name = 'Inactive' )
                             ( code = '2' name = 'In Progress' )
                             ( code = '3' name = 'Blocked' )
                             ( code = '4' name = 'In Review' )
                             ( code = '5' name = 'Resolved' ) ).

    INSERT zumal_t_def_sts FROM TABLE @lt_def_status.
  ENDMETHOD.

ENDCLASS.
