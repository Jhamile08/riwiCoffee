class UserMailer < ApplicationMailer
  def send_email(link_type)
    case link_type
    when "link1"
      @message = "Se acabo el cafe."
    when "link2"
      @message = "Se acabo el agua."
    end

    mail(
      to: "jhamiledr222@gmail.com",
      from: "erlindr@hotmail.com",
      subject: "Bienvenido",
    ) do |format|
      format.text { render plain: @message }
      format.html { render html: "<p>#{@message}</p>".html_safe }
    end
  end
end
