module ProfilesHelper
  def challenges(profile)
    return "#{profile} has not joined any challenges yet!" if profile.challenges.length == 0
    output = ''
    profile.challenges.each do |challenge|
      output += "<div>#{link_to challenge.title, challenge_path(challenge)}</div>\n"
    end
    output.html_safe
  end
end
