module JweetsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_jweets_path
    elsif action_name == 'edit'
      jweet_path
    end
  end
end
