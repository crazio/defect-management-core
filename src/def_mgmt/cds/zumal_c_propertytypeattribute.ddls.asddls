@AbapCatalog.sqlViewName: 'ZUMAL_VC_TY_ATTR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@EndUserText.label: 'Property Type Attribute Consumption'
define view ZUMAL_C_PropertyTypeAttribute
  as select from ZUMAL_I_PropertyTypeAttribute
{
      @ObjectModel.text.element: ['Name']
  key AttributeNumber,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZUMAL_C_PropertyType', element: 'Code' }}]
  key TypeCode,
      MaintenanceMethod,
      DefaultValue,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      Name,

      _PropertyType
}
