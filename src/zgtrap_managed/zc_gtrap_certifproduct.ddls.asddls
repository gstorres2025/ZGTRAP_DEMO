@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados'
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_GTRAP_CERTIFPRODUCT as projection on ZI_GTRAP_CERTIFPRODUCT
{
    key CertUuid,
    Matnr,
    Description,
    Version,
    CertStatus,
    CertCe,
    CertGs,
    CertFcc,
    CertIso,
    CertTuev,
    LocalLastChangedAt,
    Icon,
    /* Associations */
    _Stats: redirected to composition child ZC_GTRAP_CERTIFSTPRODUCT
}
