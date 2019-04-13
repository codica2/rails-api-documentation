module RequestSpecHelper
  def json
    JSON.parse(response_body)
  end
end
