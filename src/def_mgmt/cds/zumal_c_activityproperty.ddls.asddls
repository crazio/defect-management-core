@EndUserText.label: 'Activity Property BO Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZUMAL_C_ActivityProperty
  as projection on ZUMAL_I_ActivityProperty as AcitivityProperty
{
  key ID,
      ActivityID,
      Name,
      Description,
      TypeCode,
      CreatedBy,
      LastChangedBy,
      LocalLastChangedAt,

      _Activity : redirected to parent ZUMAL_C_Activity,
      _PropertyType,
      _ActivPropTypeAttrValue
}
