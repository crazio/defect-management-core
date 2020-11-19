@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Property Type Attribute'
define view entity ZUMAL_I_PropertyTypeAttribute
  as select from zumal_t_ty_attr as PropertyTypeAttribute
  association [1..1] to ZUMAL_I_PropertyType as _PropertyType on $projection.TypeCode = _PropertyType.Code
{
  key numb          as AttributeNumber,
  key type_code     as TypeCode,
      maint_meth    as MaintenanceMethod,
      default_value as DefaultValue,
      name          as Name,

      _PropertyType
}
