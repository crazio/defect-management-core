@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Activity Property'
define view entity ZUMAL_I_ActivityProperty
  as select from zumal_t_act_prp as ActivityProperty
  association        to parent ZUMAL_I_Activity        as _Activity     on $projection.ActivityID = _Activity.ID
  association [0..1] to ZUMAL_I_PropertyType           as _PropertyType on $projection.TypeCode = _PropertyType.Code
  composition [0..*] of ZUMAL_I_ActivPropTypeAttrValue as _ActivPropTypeAttrValue
{
  key guid                  as ID,
      activ_id              as ActivityID,
      name                  as Name,
      description           as Description,
      type_code             as TypeCode,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      _Activity,
      _PropertyType,
      _ActivPropTypeAttrValue
}
