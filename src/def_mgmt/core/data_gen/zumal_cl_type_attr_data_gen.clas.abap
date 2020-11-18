CLASS zumal_cl_type_attr_data_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zumal_if_standard_data_gen.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zumal_cl_type_attr_data_gen IMPLEMENTATION.

  METHOD zumal_if_standard_data_gen~generate_data.
    DATA: lt_type_attr TYPE STANDARD TABLE OF zumal_t_ty_attr.

    DELETE FROM zumal_t_ty_attr.

    lt_type_attr = VALUE #( ( numb = '01' type_code = 'T' maint_meth = 'C' name = 'Long Text' )
                            ( numb = '02' type_code = 'T' maint_meth = 'C' name = 'Upper Case' )
                            ( numb = '03' type_code = 'T' maint_meth = 'I' name = 'Max Length' default_value = '255' )
                            ( numb = '01' type_code = 'I' maint_meth = 'I' name = 'Min Value' )
                            ( numb = '02' type_code = 'I' maint_meth = 'I' name = 'Max Value' )
                            ( numb = '01' type_code = 'P' maint_meth = 'I' name = 'Length' )
                            ( numb = '02' type_code = 'P' maint_meth = 'I' name = 'Decimals' )
                            ( numb = '03' type_code = 'P' maint_meth = 'N' name = 'Min Value' )
                            ( numb = '04' type_code = 'P' maint_meth = 'N' name = 'Max Value' )
                            ( numb = '01' type_code = 'E' maint_meth = 'T' name = 'Format' default_value = 'yyyy/MM/dd HH:mm:ss' )
                            ( numb = '01' type_code = 'D' maint_meth = 'T' name = 'Format' default_value = 'yMMMd' ) ).

    INSERT zumal_t_ty_attr FROM TABLE @lt_type_attr.
  ENDMETHOD.

ENDCLASS.
