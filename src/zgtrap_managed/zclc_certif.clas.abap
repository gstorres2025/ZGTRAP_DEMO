CLASS zclc_certif DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclc_certif IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

    TYPES: tt_certifs TYPE TABLE OF zgtrap_certif WITH DEFAULT KEY.
    TYPES: tt_certifs_st TYPE TABLE OF zgtrap_certif_st WITH DEFAULT KEY.

    DELETE FROM zgtrap_certif.
    DELETE FROM zgtrap_certif_st.

    data(lt_certifs) = VALUE tt_certifs(
        ( cert_uuid = '1' matnr = '1' )
        ( cert_uuid = '2' matnr = '2' )
        ( cert_uuid = '3' matnr = '3' )
     ).

     data(lt_certifs_st) = VALUE tt_certifs_st(
        ( state_uuid = '1' cert_uuid = '1' matnr = '1' )
        ( state_uuid = '2' cert_uuid = '2' matnr = '2' )
        ( state_uuid = '3' cert_uuid = '3' matnr = '3' )
        ( state_uuid = '4' cert_uuid = '3'  matnr = '3')
     ).

     MODIFY zgtrap_certif FROM TABLE @lt_certifs.
     MODIFY zgtrap_certif_st FROM TABLE @lt_certifs_st.

     out->write( 'Certificados inseridos com sucesso.' ).

  ENDMETHOD.
ENDCLASS.
