class EmailServiceMailer < ApplicationMailer
    default from:'leavesystem29@gmail.com'
    def welcome_email
        @user=params[:user]
        @url='hi'
        mail(to:@user.email,subject:'Welcome to Project Management system')
    end
end
