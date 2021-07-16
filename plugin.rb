# name: notepad
# about: A sample plugin showing how to add a notepad
# version: 0.0.1
# authors: Chris Shen
# url: https://github.com/chrisshen98/discourse-notepad-plugin

enabled_site_setting :notepad_enabled
register_asset 'stylesheets/notepad.css'

after_initialize do
  load File.expand_path('../app/controllers/notepad_controller.rb', __FILE__)

  Discourse::Application.routes.append do
    # Map the path `/notepad` to `NotepadController`’s `index` method
    get '/notepad' => 'notepad#index'
  end
end