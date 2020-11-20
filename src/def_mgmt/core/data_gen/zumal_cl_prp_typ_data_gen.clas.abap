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
    DATA: lt_prop_type     TYPE STANDARD TABLE OF zumal_t_prp_typ,
          lt_prp_type_text TYPE STANDARD TABLE OF zumal_t_tprp_typ.

    DELETE FROM zumal_t_prp_typ.
    DELETE FROM zumal_t_tprp_typ.

    lt_prop_type = VALUE #( ( code = 'T' )
                            ( code = 'I' )
                            ( code = 'P' )
                            ( code = 'E' )
                            ( code = 'D' )
                            ( code = 'B' ) ).

    INSERT zumal_t_prp_typ FROM TABLE @lt_prop_type.

    lt_prp_type_text = VALUE #( ( spras = 'E' code = 'T' name = 'Text' )
                                ( spras = 'E' code = 'I' name = 'Integer' )
                                ( spras = 'E' code = 'P' name = 'Decimal' )
                                ( spras = 'E' code = 'E' name = 'Timestamp' )
                                ( spras = 'E' code = 'D' name = 'Date' )
                                ( spras = 'R' code = 'T' name = 'Текст' )
                                ( spras = 'R' code = 'I' name = 'Целое число' )
                                ( spras = 'R' code = 'P' name = 'Десятичная дробь' )
                                ( spras = 'R' code = 'E' name = 'Отметка времени' )
                                ( spras = 'R' code = 'D' name = 'Дата' ) ).

    INSERT zumal_t_tprp_typ FROM TABLE @lt_prp_type_text.

  ENDMETHOD.

ENDCLASS.
