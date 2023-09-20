--- start of file
---@class Network
local Network = {}
Network.NodeID = "NewNode"
Network.ChannelName = "Local"

function Network.setNodeID(newID)
---@param newID string required; the new ID for the node to use the network
---@return boolean TRUE if worked, else FALSE
end

function Network.getNodeID()
  ---@return string current nodeID
  end

function Network.setChannelName(newCN)
  ---@param newCN string required; the network channel name
  ---@return boolean TRUE if worked, else FALSE
end

function Network.prepare()
  readFrom.setChannel(self.ChannelName)
  writeTo.setChannel(self.ChannelName)
  ---@return number 1 = success, any negative value indicates failure and it's reason
end
function Network.poll()
---@param specificNodeName string optional; if sent, only the indicated machine should answer the poll.
---@return number The number of nodes that replied to the poll
end
--- end of file
