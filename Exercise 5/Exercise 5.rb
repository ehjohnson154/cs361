# Exercise 6
#make classes as small as possible
#make a class responsible for one small thing

class LaunchDiscussionWorkflow

    def initialize(discussion, host, users)
      @discussion = discussion
      @host = host
      @participants = users
    end
  
    # Expects @participants array to be filled with User objects
    def run
      return unless valid?
      run_callbacks(:create) do
        ActiveRecord::Base.transaction do
          discussion.save! 
          create_discussion_roles!
          @successful = true
        end
      end
    end
    # ...
  
  end

#new class participants:
#-pass in list of emails
#-generate participant list
#-stores list of participants for other classes to call
class Participants

  def initialize(participants_list)
    @participants = []

  def generate_participant_users
    return if participant_list.blank?
    participants_list do |email_address| #iterate through list, append participants with new user objects
      @participants.push(User.create(email: email_address.downcase, password: Devise.friendly_token))
    end
  end

end
  
  
  discussion = Discussion.new(title: "fake", ...)
  host = User.find(42)

  participant_users = Participants.new(["fake1@example.com","fake2@example.com","nfake3@example.com"])
  participant_users.generate_participant_users()
  participant_list =  Participants.participants

  workflow = LaunchDiscussionWorkflow.new(discussion, host, participant_list)
  workflow.run