class RemovePaperclipAttachments < ActiveRecord::Migration
  def change
    remove_attachment :themes, :picture
    remove_attachment :personalizations, :picture
  end
end
