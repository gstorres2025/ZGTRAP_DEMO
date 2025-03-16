CLASS zclc_products DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    "classe de execucao do adt, pois nao existe programa no abap cloud
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclc_products IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    TYPES: tt_products TYPE TABLE OF zgtrap_product WITH DEFAULT KEY.

    DELETE FROM zgtrap_product.

    data(lt_products) = VALUE tt_products(
        ( matnr = '1' description = 'Celular' language = 'P' )
        ( matnr = '2' description = 'Televisão' language = 'P' )
        ( matnr = '3' description = 'Computador' language = 'P' )
        ( matnr = '1' description = 'Cellphone' language = 'E' )
        ( matnr = '2' description = 'Television' language = 'E' )
        ( matnr = '3' description = 'Computer' language = 'E' )
     ).

     MODIFY zgtrap_product FROM TABLE @lt_products.

     out->write( 'Produtos inseridos com sucesso.' ).

  ENDMETHOD.

ENDCLASS.
