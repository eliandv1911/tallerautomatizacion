Feature: buy products on LINIO
  me as a user of the linio application
  I need to purchase several products

  Scenario Outline: Add and remove products from the shopping cart in LINIO
    Given the user is in the application https://www.linio.com.co/
    When the user must be in the Hogar category, in the section Colchones, Base Camas y Almohadas
    When the user selects the product <product>
    When the user adds products to the cart <quantity>
    When the user clicks go to cart
    Then the user should see the product and the quantity <product> <quantity>
    When the user returns to the main page
    When the user clicks on the shopping cart on the main page
    Then the user should see the same values saved in the txt file
    When the user clicks the delete section on the shopping cart page
    Then el usuario deberia ver el mensaje <message>

    Examples:
      | product                                                | quantity | message                           |
      | Super Mega Combo Azul Queen 160x190 Resortado Marshall | 3        | NO TIENES PRODUCTOS EN TU CARRITO |



