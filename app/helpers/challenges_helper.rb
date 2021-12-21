module ChallengesHelper
  def join(challenge)
    return "#{link_to 'Join Challenge', join_challenges_path(challenge.id)} | ".html_safe unless challenge.participants.include?(current_user.profile)
  end
end
