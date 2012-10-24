# RailsAdmin config file. Generated on October 24, 2012 13:58
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Bug Tracker', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'User'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'User'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = []

  # Include specific models (exclude the others):
  # config.included_models = []

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]
  config.model Department do
    edit do
      field :title
    end
    create do 
      field :title
    end  
  end  
  config.model User do
  #   # Found associations:
    # Found columns:
      configure :id, :integer 
      configure :email, :string 
      configure :password, :password         # Hidden 
      configure :password_confirmation, :password         # Hidden  
      configure :role, :enum do
        enum do
          # except = bindings[:object].id
          User.role.options
        end
      end
    list do; end
    export do; end
    show do; end
    edit do
      field :email, :string 
      field :password, :password         # Hidden 
      field :password_confirmation, :password         # Hidden 
      field :first_name, :string
      field :last_name, :string
      field :department 
      field :role, :enum do
        enum do
          # except = bindings[:object].id
          User.role.options
        end
      end
    end
    create do 
      field :email, :string 
      field :password, :password         # Hidden 
      field :password_confirmation, :password         # Hidden  
      field :first_name, :string
      field :last_name, :string
      field :department
      field :role, :enum do
        enum do
          # except = bindings[:object].id
          User.role.options
        end
      end
    end
    update do; end
   end

  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block
  
  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:


end
