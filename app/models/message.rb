class Message < ApplicationRecord
    belongs_to :user

    before_save do
      self.content.gsub!(/((?:http|https):\/\/[^\s\n]*)/, "<a href='\\1'>\\1</a>")
    end

    after_create_commit { BroadcastMessageJob.perform_later self }
end
