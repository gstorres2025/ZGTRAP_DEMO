@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Certificados Status'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_GTRAP_CERTIF_ST as select from zgtrap_certif_st
{
    key state_uuid as StateUuid,
    key cert_uuid as CertUuid,
    matnr as Matnr,
    version as Version,
    status as Status,
    status_old as StatusOld,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    local_changed_at as LocalChangedAt
}
