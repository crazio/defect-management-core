@AbapCatalog.sqlViewName: 'ZUMAL_V_TY_ATTR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Property Type Attribute'
define view ZUMAL_I_PropertyTypeAttribute
  as select from zumal_t_ty_attr as PropertyTypeAttribute
  association [1..1] to ZUMAL_I_PropertyType      as _PropertyType      on  $projection.TypeCode = _PropertyType.Code
  association [0..1] to ZUMAL_I_TypeAttributeText as _TypeAttributeText on  $projection.AttributeNumber = _TypeAttributeText.AttributeNumber
                                                                        and $projection.TypeCode        = _TypeAttributeText.TypeCode
                                                                        and _TypeAttributeText.Language = $session.system_language
{
  key numb                    as AttributeNumber,
  key type_code               as TypeCode,
      maint_meth              as MaintenanceMethod,
      default_value           as DefaultValue,
      _TypeAttributeText.Name as Name,

      _PropertyType,
      _TypeAttributeText
}
