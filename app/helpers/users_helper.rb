module UsersHelper

  def job_title_icon
    case @user.profile.job_title
    when 'Developer' then '<i class="fa fa-code"></i>'.html_safe
    when 'Entrepreneur' then '<i class="fa fa-lightbulb-o"></i>'.html_safe
    when 'Investor' then '<i class="fa fa-dollar"></i>'.html_safe
    else '<i class="fa fa-user"></i>'.html_safe
    end
  end
  
  def html_of(raw_text)
    ("<p>" + raw_text.gsub(/\s*\n+\s*/,'</p><p>') + "</p>").html_safe
  end

end
