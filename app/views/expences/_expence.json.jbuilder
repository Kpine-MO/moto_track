json.extract! expence, :id, :amount, :approved_by, :approval_status, :issue_id, :created_at, :updated_at
json.url expence_url(expence, format: :json)
