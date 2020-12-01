CLASS zumal_cl_def_status_data_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES zumal_if_data_gen.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zumal_cl_def_status_data_gen IMPLEMENTATION.

  METHOD zumal_if_data_gen~generate_data.
    DATA: lt_def_status      TYPE STANDARD TABLE OF zumal_t_def_sts,
          lt_def_status_text TYPE STANDARD TABLE OF zumal_t_tdef_sts.

    DELETE FROM zumal_t_def_sts.
    DELETE FROM zumal_t_tdef_sts.

    lt_def_status = VALUE #( ( code = '1' ) ( code = '2' ) ( code = '3' ) ( code = '4' ) ( code = '5' ) ).

    INSERT zumal_t_def_sts FROM TABLE @lt_def_status.

    lt_def_status_text = VALUE #( ( spras = 'E' code = '1' name = 'Inactive' )
                                  ( spras = 'E' code = '2' name = 'In Progress' )
                                  ( spras = 'E' code = '3' name = 'Blocked' )
                                  ( spras = 'E' code = '4' name = 'In Review' )
                                  ( spras = 'E' code = '5' name = 'Resolved' )
                                  ( spras = 'R' code = '1' name = 'Неактивен' )
                                  ( spras = 'R' code = '2' name = 'В процессе' )
                                  ( spras = 'R' code = '3' name = 'Заблокирован' )
                                  ( spras = 'R' code = '4' name = 'В проверке' )
                                  ( spras = 'R' code = '5' name = 'Разрешен' ) ).

    INSERT zumal_t_tdef_sts FROM TABLE @lt_def_status_text.
  ENDMETHOD.

ENDCLASS.
