local ER_Net = require('network')

system.print('Debugging Control Unit...')
for linkName, element in pairs(library.getLinks()) do
  system.print(string.format('Found link `%s` of type `%s`', linkName, element.getClass()))
end

--- start of play-pen
for key, data in ipairs(memoryStore.getKeyList()) do
  system.print(string.format('Found KEY: `%s` which points to `%d` bytes of data.',key, data.length()))
end

ER_Net.setChannelName("ws2_comms")
ER_Net.setNodeID("testPoint-01")
if (ER_Net.prepare() > 0) then do
  if (ER_Net.poll() > 0) then do
    to_app = "mining_data"
    from_node = ER_Net.getNodeID()
  end
end
--- end of play-pen

-- Stops execution
unit.exit()
