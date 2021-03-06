CLASS zumal_cl_data_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.

    METHODS run_generate
      IMPORTING
        io_data_gen TYPE REF TO zumal_if_data_gen.

    METHODS generate_standard_data.

ENDCLASS.



CLASS zumal_cl_data_generator IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Start of data generation' ).
    generate_standard_data( ).
    out->write( 'Data has been generated!' ).
  ENDMETHOD.

  METHOD generate_standard_data.
    run_generate( io_data_gen = NEW zumal_cl_def_status_data_gen( ) ).
    run_generate( io_data_gen = NEW zumal_cl_prp_typ_data_gen( ) ).
    run_generate( io_data_gen = NEW zumal_cl_type_attr_data_gen( ) ).
    COMMIT WORK.
  ENDMETHOD.

  METHOD run_generate.
    io_data_gen->generate_data( ).
  ENDMETHOD.

ENDCLASS.
