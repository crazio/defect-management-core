@AbapCatalog.sqlViewName: 'ZUMAL_V_TTY_ATTR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.dataCategory: #TEXT
@EndUserText.label: 'Property Type Attribute Text'
define view ZUMAL_I_TypeAttributeText
  as select from zumal_t_tty_attr
{
  key numb      as AttributeNumber,
  key type_code as TypeCode,
      @Semantics.language: true
  key spras     as Language,
      @Semantics.text: true
      name      as Name
}
