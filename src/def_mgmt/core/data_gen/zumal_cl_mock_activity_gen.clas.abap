CLASS zumal_cl_mock_activity_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.

    METHODS run_generate
      IMPORTING
        io_data_gen TYPE REF TO zumal_if_data_gen.

ENDCLASS.



CLASS zumal_cl_mock_activity_gen IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( 'Start of generation activity mock entities' ).
    run_generate( NEW zumal_cl_activity_data_gen( ) ).
    COMMIT WORK.
    out->write( 'End of generation activity mock entities' ).
  ENDMETHOD.

  METHOD run_generate.
    io_data_gen->generate_data( ).
  ENDMETHOD.

ENDCLASS.
