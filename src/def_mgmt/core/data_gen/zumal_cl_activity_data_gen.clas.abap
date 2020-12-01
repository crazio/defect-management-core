CLASS zumal_cl_activity_data_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES zumal_if_data_gen.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zumal_cl_activity_data_gen IMPLEMENTATION.

  METHOD zumal_if_data_gen~generate_data.
    DATA: lt_activity   TYPE STANDARD TABLE OF zumal_t_activ,
          lt_activ_prop TYPE STANDARD TABLE OF zumal_t_act_prp.

    DELETE FROM zumal_t_activ.

    GET TIME STAMP FIELD DATA(lv_timestamp).
    DATA(lv_user) = cl_abap_context_info=>get_user_alias( ).

    lt_activity = VALUE #(
      (
        guid = 'E579B6EF90E0359DE509B6EAFA6D59BF'
        code = 'CD1'
        name = 'Activity 1'
        descr = 'Test Activity 1'
        created_by = lv_user
        created_at = lv_timestamp
        last_changed_by = lv_user
        last_changed_at = lv_timestamp
        local_last_changed_at = lv_timestamp
      )
      (
        guid = '780D92DADA2D61C8B7E28020819081A9'
        code = 'CD2'
        name = 'Activity 2'
        descr = 'Test Activity 2'
        created_by = lv_user
        created_at = lv_timestamp
        last_changed_by = lv_user
        last_changed_at = lv_timestamp
        local_last_changed_at = lv_timestamp
      )
    ).


    INSERT zumal_t_activ FROM TABLE @lt_activity.

    DELETE FROM zumal_t_act_prp.

    lt_activ_prop = VALUE #(
      (
        guid = '18F26E9D8235F2D18AC3C87E16D5A716'
        activ_id = 'E579B6EF90E0359DE509B6EAFA6D59BF'
        name = 'Prop 1'
        description = 'Test Prop 1'
        type_code = 'T'
        created_by = lv_user
        last_changed_by = lv_user
        local_last_changed_at = lv_timestamp
      )
      (
        guid = 'D85135932D04A71749C8479292E4ADAE'
        activ_id = 'E579B6EF90E0359DE509B6EAFA6D59BF'
        name = 'Prop 2'
        description = 'Test Prop 2'
        type_code = 'I'
        created_by = lv_user
        last_changed_by = lv_user
        local_last_changed_at = lv_timestamp
      )
      (
        guid = '541F1E1827DBE90956A8F5456C80EA93'
        activ_id = '780D92DADA2D61C8B7E28020819081A9'
        name = 'Prop 1'
        description = 'Test Prop 1'
        type_code = 'D'
        created_by = lv_user
        last_changed_by = lv_user
        local_last_changed_at = lv_timestamp
      )
    ).

    INSERT zumal_t_act_prp FROM TABLE @lt_activ_prop.

  ENDMETHOD.

ENDCLASS.
