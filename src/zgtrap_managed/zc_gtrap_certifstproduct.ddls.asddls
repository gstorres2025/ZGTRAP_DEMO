@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados Status'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_GTRAP_CERTIFSTPRODUCT as projection on ZI_GTRAP_CERTIFSTPRODUCT
{
    key StateUuid,
    key CertUuid,
    Matnr,
    Description,
    Version,
    Status,
    StatusOld,
    LastChangedBy,
    LastChangedAt,
    LocalChangedAt,
    /* Associations */
    _Certif: redirected to parent ZC_GTRAP_CERTIFPRODUCT
}
