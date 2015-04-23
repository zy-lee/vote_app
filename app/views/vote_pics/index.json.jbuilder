json.array!(@vote_pics) do |vote_pic|
  json.extract! vote_pic, :id, :src
  json.url vote_pic_url(vote_pic, format: :json)
end
