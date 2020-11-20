@AbapCatalog.sqlViewName: 'ZUMAL_VC_PRP_TYP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@EndUserText.label: 'Property Type Consumption'
define view ZUMAL_C_PropertyType
  as select from ZUMAL_I_PropertyType
{
      @ObjectModel.text.element: ['Name']
  key Code,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      Name,

      _PropertyTypeAttribute
}
