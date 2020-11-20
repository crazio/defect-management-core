@EndUserText.label: 'Activity Property BO Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity ZUMAL_C_ActivityProperty
  as projection on ZUMAL_I_ActivityProperty as AcitivityProperty
{
  key ID,
      ActivityID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      Name,
      Description,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZUMAL_C_PropertyType', element: 'Code' } }]
      TypeCode,
      CreatedBy,
      LastChangedBy,
      LocalLastChangedAt,

      _Activity : redirected to parent ZUMAL_C_Activity,
      _PropertyType,
      _ActivPropTypeAttrValue
}
