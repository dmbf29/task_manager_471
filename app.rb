require_relative 'repository'
require_relative 'controller'
require_relative 'router'

csv_file_path = "data/recipes.csv"
repository = Repository.new(csv_file_path)
controller = Controller.new(repository)
router = Router.new(controller)
router.run

# p repository.all
