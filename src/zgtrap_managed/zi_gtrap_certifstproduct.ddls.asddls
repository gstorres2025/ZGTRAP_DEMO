@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado Status Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_GTRAP_CERTIFSTPRODUCT
  as select from ZI_GTRAP_CERTIF_ST
  association        to parent ZI_GTRAP_CERTIFPRODUCT as _Certif 
                                                      on  $projection.CertUuid = _Certif.CertUuid
  association [1..1] to ZI_GTRAP_PRODUCT              as _Prod   
                                                      on  $projection.Matnr = _Prod.Matnr
                                                      and _Prod.Language    = $session.system_language
{
  key StateUuid,
  key CertUuid,
      Matnr,
      _Prod.Description,
      Version,
      Status,
      StatusOld,
      @Semantics.user.lastChangedBy: true
      LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalChangedAt,
      
      _Prod,
      _Certif
}
