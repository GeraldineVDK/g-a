# Preview all emails at http://localhost:3000/rails/mailers/devi_mailer
class DeviMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/devi_mailer/nouveau_devi
  def nouveau_devi
    devi = Devi.last
    DeviMailer.with(devi: devi).nouveau_devi
  end

end
