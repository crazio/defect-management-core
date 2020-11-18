@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Activity'
define root view entity ZUMAL_I_Activity
  as select from zumal_t_activ as Activity
  composition [0..*] of ZUMAL_I_ActivityProperty as _ActivityProperty
{
  key guid                  as ID,
      code                  as Code,
      name                  as Name,
      descr                 as Description,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      _ActivityProperty
}
