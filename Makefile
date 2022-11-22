# Misc
.DEFAULT_GOAL = help

## —— 🐳 Project Makefile ———————————————————————————————————
help: ## Outputs this help screen
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

up: ## Create all managers & workers
	vagrant up

remove: ## Remove all managers & workers resources
	vagrant destroy -f

pause: ## Suspend all machines in their current state
	vagrant suspend