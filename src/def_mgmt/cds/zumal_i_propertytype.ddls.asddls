@AbapCatalog.sqlViewName: 'ZUMAL_V_PRP_TYP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Property Type'
define view ZUMAL_I_PropertyType
  as select from zumal_t_prp_typ as PropertyType
  association [0..1] to ZUMAL_I_PropertyTypeText      as _PropertyTypeText      on  $projection.Code           = _PropertyTypeText.Code
                                                                                and _PropertyTypeText.Language = $session.system_language
  association [0..*] to ZUMAL_I_PropertyTypeAttribute as _PropertyTypeAttribute on  $projection.Code = _PropertyTypeAttribute.TypeCode
{
  key code                   as Code,
      _PropertyTypeText.Name as Name,

      _PropertyTypeAttribute,
      _PropertyTypeText
}
