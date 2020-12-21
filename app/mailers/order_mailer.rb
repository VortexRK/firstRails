class OrderMailer < ApplicationMailer
  default from: 'vortex.rk@gmail.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped()
   @order = order
   mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end

  def error_mail
    mail to: "admin@mail.com", subject: 'Error message' 
  end

  def failured(order, error)
    @error = error
    mail to: order.email, subject: 'FAIL'
  end
  
  def ship_date_change_email(order, old_ship_date)
    @order = order
    @old_ship_date = old_ship_date
    mail to: order.email, subject: "ship date is changed"
  end
end
