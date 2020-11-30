@EndUserText.label: 'Type Attribute Value BO Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZUMAL_C_ActivPropTypeAttrValue
  as projection on ZUMAL_I_ActivPropTypeAttrValue
{
  key ID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      PropertyID,
      TypeCode,
      AttributeNumber,
      Value,
      CreatedBy,
      LastChangedBy,
      LocalLastChangedAt,

      _ActivityProperty,
      _PropertyTypeAttribute
}
