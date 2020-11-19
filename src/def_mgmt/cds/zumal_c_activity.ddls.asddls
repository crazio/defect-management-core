@EndUserText.label: 'Activity BO Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZUMAL_C_Activity
  as projection on ZUMAL_I_Activity as Activity
{
  key ID,
      Code,
      Name,
      Description,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,

      _ActivityProperty : redirected to composition child ZUMAL_C_ActivityProperty
}
