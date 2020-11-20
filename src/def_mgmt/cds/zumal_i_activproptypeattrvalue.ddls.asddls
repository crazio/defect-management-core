@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Activity Property Type Attribute Value'
define view entity ZUMAL_I_ActivPropTypeAttrValue
  as select from zumal_t_apty_av as ActivPropTypeAttrValue
  association        to parent ZUMAL_I_ActivityProperty as _ActivityProperty      on  $projection.PropertyID = _ActivityProperty.ID
  association [1..1] to ZUMAL_I_PropertyTypeAttribute   as _PropertyTypeAttribute on  $projection.TypeCode        = _PropertyTypeAttribute.TypeCode
                                                                                  and $projection.AttributeNumber = _PropertyTypeAttribute.AttributeNumber
{
  key guid                  as ID,
      prop_id               as PropertyID,
      type_code             as TypeCode,
      attr_numb             as AttributeNumber,
      value                 as Value,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      _ActivityProperty,
      _PropertyTypeAttribute
}
