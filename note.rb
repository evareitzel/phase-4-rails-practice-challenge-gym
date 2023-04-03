# 04/05/2023 | 77min

# generate resources
$ rails g resource Client name age:integer --no-test-framework
$ rails g resource Gym name address --no-test-framework
$ rails g resource Membership client:belongs_to gym:belongs_to charge:integer --no-test-framework

# generate serializers
gem 'active_model_serializers' # add to gemfile
$ rails g serializer client
$ rails g serializer gym
$ rails g serializer membership
# customize JSON attributes

# add model associations (has_many)
# define routes

$ rails db:migrate db:seed
$ rails s

####
# add model validations

# add controller actions
# membership - create
# gym - show, delete
# client - show




## Draft 1

# # GET /clients/:id
  # def show
  #   client = Client.find(params[:id])
  #   render json: client, status: :accepted
  # end


  # # SHOW /client/:id
  #     # except: [:created_at, :updated_at]
    
  #   # render json: {
  #   #   id: client.id, 
  #   #   name: client.name,
  #   #   age: client.age
  #   # }

  #   # client.rb
  #   def total_charges
  #     amount = self.memberships
        
  #     "#{amount}"
  #     # "#{self.memberships.charge.all}"
  #   end

  #     # GET /clients/:id
  # def show
  #   client = Client.find(params[:id])
  #   render json: client, only: [:id, :name, :age] # , include: :memberships
    
  #   # methods: [:total_charges] # status: :accepted    
  # end