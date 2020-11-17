@AbapCatalog.sqlViewName: 'ZUMAL_V_ACTIV'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Activity'
define view ZUMAL_I_ACTIVITY as select from zumal_t_activ {
    key code as Code
}
