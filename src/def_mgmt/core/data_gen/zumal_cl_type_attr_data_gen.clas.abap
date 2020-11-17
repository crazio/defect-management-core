CLASS zumal_cl_type_attr_data_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zumal_if_standard_data_gen.

  PROTECTED SECTION.

  PRIVATE SECTION.

    METHODS insert_into_main.

    METHODS insert_into_text.

ENDCLASS.



CLASS zumal_cl_type_attr_data_gen IMPLEMENTATION.
  METHOD zumal_if_standard_data_gen~before_gen.
    DELETE FROM zumal_t_ty_attr.
    DELETE FROM zumal_t_tty_attr.
  ENDMETHOD.

  METHOD zumal_if_standard_data_gen~generate_data.
    insert_into_main( ).
    insert_into_text( ).
  ENDMETHOD.

  METHOD insert_into_main.
    DATA: lt_type_attr TYPE STANDARD TABLE OF zumal_t_ty_attr.

    lt_type_attr = VALUE #( ( numb = '01' type_code = 'T' maint_meth = 'C' )
                            ( numb = '02' type_code = 'T' maint_meth = 'C' )
                            ( numb = '03' type_code = 'T' maint_meth = 'I' default_value = '255' )
                            ( numb = '01' type_code = 'I' maint_meth = 'I' )
                            ( numb = '02' type_code = 'I' maint_meth = 'I' )
                            ( numb = '01' type_code = 'P' maint_meth = 'I' )
                            ( numb = '02' type_code = 'P' maint_meth = 'I' )
                            ( numb = '03' type_code = 'P' maint_meth = 'N' )
                            ( numb = '04' type_code = 'P' maint_meth = 'N' )
                            ( numb = '01' type_code = 'E' maint_meth = 'T' default_value = 'yyyy/MM/dd HH:mm:ss' )
                            ( numb = '01' type_code = 'D' maint_meth = 'T' default_value = 'yMMMd' ) ).

    INSERT zumal_t_ty_attr FROM TABLE @lt_type_attr.
  ENDMETHOD.

  METHOD insert_into_text.
    DATA: lt_type_attr_text TYPE STANDARD TABLE OF zumal_t_tty_attr.

    lt_type_attr_text = VALUE #( ( spras = 'E' numb = '01' type_code = 'T' name = 'Long Text' )
                                 ( spras = 'E' numb = '02' type_code = 'T' name = 'Upper Case' )
                                 ( spras = 'E' numb = '03' type_code = 'T' name = 'Max Length' )
                                 ( spras = 'E' numb = '01' type_code = 'I' name = 'Min Value' )
                                 ( spras = 'E' numb = '02' type_code = 'I' name = 'Max Value' )
                                 ( spras = 'E' numb = '01' type_code = 'P' name = 'Length' )
                                 ( spras = 'E' numb = '02' type_code = 'P' name = 'Decimals' )
                                 ( spras = 'E' numb = '03' type_code = 'P' name = 'Min Value' )
                                 ( spras = 'E' numb = '04' type_code = 'P' name = 'Max Value' )
                                 ( spras = 'E' numb = '01' type_code = 'E' name = 'Format' )
                                 ( spras = 'E' numb = '01' type_code = 'D' name = 'Format' )
                                 ( spras = 'R' numb = '01' type_code = 'T' name = 'Длинный Текст' )
                                 ( spras = 'R' numb = '02' type_code = 'T' name = 'В верхнем регистре' )
                                 ( spras = 'R' numb = '03' type_code = 'T' name = 'Максимальная длинна' )
                                 ( spras = 'R' numb = '01' type_code = 'I' name = 'Минимальное значение' )
                                 ( spras = 'R' numb = '02' type_code = 'I' name = 'Максимальное значение' )
                                 ( spras = 'R' numb = '01' type_code = 'P' name = 'Длинна целой части' )
                                 ( spras = 'R' numb = '02' type_code = 'P' name = 'Длинна дробной части' )
                                 ( spras = 'R' numb = '03' type_code = 'P' name = 'Минимальное значение' )
                                 ( spras = 'R' numb = '04' type_code = 'P' name = 'Максимальное значение' )
                                 ( spras = 'R' numb = '01' type_code = 'E' name = 'Формат' )
                                 ( spras = 'R' numb = '01' type_code = 'D' name = 'Формат' ) ).

    INSERT zumal_t_tty_attr FROM TABLE @lt_type_attr_text.
  ENDMETHOD.

ENDCLASS.
