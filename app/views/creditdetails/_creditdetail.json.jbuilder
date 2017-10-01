json.extract! creditdetail, :id, :amount, :repaidAmount, :isPaid, :requestStatus, :created_at, :updated_at
json.url creditdetail_url(creditdetail, format: :json)
