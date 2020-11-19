@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Activity Property Type'
define view entity ZUMAL_I_PropertyType
  as select from zumal_t_prp_typ as PropertyType
  association [0..*] to ZUMAL_I_PropertyTypeAttribute as _PropertyTypeAttribute on $projection.Code = _PropertyTypeAttribute.TypeCode
{
  key code as Code,
      name as Name,

      _PropertyTypeAttribute
}
