# Exercise 6
#make classes as small as possible
#make a class responsible for one small thing

class LaunchDiscussionWorkflow

    def initialize(discussion, host, participants_email_string)
      @discussion = discussion
      @host = host
      @participants_email_string = participants_email_string
      @participants = []
    end
  
    # Expects @participants array to be filled with User objects
    def run
      return unless valid?
      run_callbacks(:create) do
        ActiveRecord::Base.transaction do #//Do acts as "curly braces"
          discussion.save! #// ! means its going to modify data
          create_discussion_roles!
          @successful = true
        end
      end
    end
  
    def generate_participant_users_from_email_string
      return if @participants_email_string.blank? #// going to return true or false
      @participants_email_string.split.uniq.map do |email_address|
        User.create(email: email_address.downcase, password: Devise.friendly_token)
      end
    end
  
    # ...
  
  end
  
  
  discussion = Discussion.new(title: "fake", ...)
  host = User.find(42)
  participants = "fake1@example.com\nfake2@example.com\nfake3@example.com" #// why arew we giving a long string? why not a array?
                                                                            #// why not make a add user method?
  
  workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)
  workflow.generate_participant_users_from_email_string
  workflow.run