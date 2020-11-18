CLASS zumal_cl_prp_typ_data_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES zumal_if_standard_data_gen.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zumal_cl_prp_typ_data_gen IMPLEMENTATION.

  METHOD zumal_if_standard_data_gen~generate_data.
    DATA: lt_prop_type TYPE STANDARD TABLE OF zumal_t_prp_typ.

    DELETE FROM zumal_t_prp_typ.

    lt_prop_type = VALUE #( ( code = 'T' name = 'Text' )
                            ( code = 'I' name = 'Integer' )
                            ( code = 'P' name = 'Decimal' )
                            ( code = 'E' name = 'Timestamp' )
                            ( code = 'D' name = 'Date' )
                            ( code = 'B' name = 'Boolean' ) ).

    INSERT zumal_t_prp_typ FROM TABLE @lt_prop_type.
  ENDMETHOD.

ENDCLASS.
