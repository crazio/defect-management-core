@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Activity Property Type Attribute Value'
define view entity ZUMAL_I_ActivPropTypeAttrValue
  as select from zumal_t_apty_av as ActivPropTypeAttrValue
  association [1..1] to ZUMAL_I_ActivityProperty      as _ActivityProperty      on  $projection.PropertyID = _ActivityProperty.ID
  association [1..1] to ZUMAL_I_PropertyTypeAttribute as _PropertyTypeAttribute on  $projection.TypeCode        = _PropertyTypeAttribute.TypeCode
                                                                                and $projection.AttributeNumber = _PropertyTypeAttribute.AttributeNumber
{
  key prop_id   as PropertyID,
  key type_code as TypeCode,
  key attr_numb as AttributeNumber,
      value     as Value,

      _ActivityProperty,
      _PropertyTypeAttribute
}
