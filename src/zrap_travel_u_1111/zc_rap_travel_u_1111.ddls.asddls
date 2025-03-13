@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Travel Data'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_RAP_Travel_U_1111
  as projection on ZI_RAP_Travel_U_1111
{
  key TravelId,
      @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Agency', element: 'AgencyID' } } ]
      @Search.defaultSearchElement: true
      AgencyId,
      @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Customer', element: 'CustomerID' } } ]
      @Search.defaultSearchElement: true
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      @Consumption.valueHelpDefinition: [ { entity: { name: 'I_Currency', element: 'Currency' } } ]
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,

      /* Associations */
      _Agency,
      _Booking : redirected to composition child ZC_RAP_Booking_U_1111,
      _Currency,
      _Customer
}
