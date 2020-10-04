Feature: Update Booking
  Este servicio es utilizado para poder
  actualizar las reservas del cliente
  
  Background: 
    * url baseUrl
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta para actualizar una reserva reciba 200
      * def createTokenResponse = call read('classpath:common/createToken.feature')
      * def accessToken = createTokenResponse.response.token
      Given path '/booking/' + 9
      * cookie token = accessToken
      And request
      """
      {
    "firstname" : "Carla",
    "lastname" : "Llanos",
    "totalprice" : 111,
    "depositpaid" : true,
    "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
    },
    "additionalneeds" : "Breakfast"
    }
      """
      When method PUT
      Then status 200
