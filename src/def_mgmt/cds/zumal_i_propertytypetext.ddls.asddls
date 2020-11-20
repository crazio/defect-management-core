@AbapCatalog.sqlViewName: 'ZUMAL_V_TPRP_TYP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.dataCategory: #TEXT
@EndUserText.label: 'Property Type Text'
define view ZUMAL_I_PropertyTypeText
  as select from zumal_t_tprp_typ as PropertyTypeText
{
  key code  as Code,
      @Semantics.language: true
  key spras as Language,
      @Semantics.text: true
      name  as Name
}
