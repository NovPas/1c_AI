.PHONY: export-workflows

# Экспортирует все workflow из n8n в читаемый JSON и копирует их в ./workflows,
# чтобы можно было закоммитить в git отдельно от n8n_data (см. .gitignore).
export-workflows:
	docker compose exec n8n mkdir -p /home/node/.n8n-files/workflows
	docker compose exec n8n n8n export:workflow --all --separate --output=/home/node/.n8n-files/workflows/
