json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :detail, :begin, :end, :status
  json.url task_url(task, format: :json)
end
