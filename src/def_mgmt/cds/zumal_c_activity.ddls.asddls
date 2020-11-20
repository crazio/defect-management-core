@EndUserText.label: 'Activity BO Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZUMAL_C_Activity
  as projection on ZUMAL_I_Activity as Activity
{
      @UI.hidden: true
  key ID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      Code,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      Name,
      Description,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,

      _ActivityProperty : redirected to composition child ZUMAL_C_ActivityProperty
}
