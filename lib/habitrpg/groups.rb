require 'json'

module Groups
  def get_groups(types)
    get("groups?type=#{types.join(",")}")
  end

  def get_group_chat(group_id)
    get("groups/#{group_id}/chat")
  end
end

