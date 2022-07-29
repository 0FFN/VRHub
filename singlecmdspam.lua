-- This is meant to be a [hopefully] private script.
-- I am the only creator of this script, if you see it anywhere else on the net report this to me.
-- Do not even THINK about leaking, skidding or claiming you made this script. It is public for your safety.

prefix = game.Players.LocalPlayer.PlayerGui.HDAdminGUIs.MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
chatfunc = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
local VRGui = Instance.new("ScreenGui")
local SingleCmdSpam = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Player = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local poo = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local give = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

VRGui.Name = "VRGui"
VRGui.Parent = game.CoreGui
VRGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

SingleCmdSpam.Name = "SingleCmdSpam"

SingleCmdSpam.Parent = VRGui
SingleCmdSpam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SingleCmdSpam.Position = UDim2.new(0.405208349, 0, 0.49119556, 0)
SingleCmdSpam.Size = UDim2.new(0, 363, 0, 128)
SingleCmdSpam.Active = true
SingleCmdSpam.Draggable = true

UICorner.Parent = SingleCmdSpam

TextLabel.Parent = SingleCmdSpam
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(0.0137741044, 0, 0.0619931221, 0)
TextLabel.Size = UDim2.new(0, 352, 0, 31)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "VR's Single Cmd Spam"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 60)
TextLabel.TextScaled = true
TextLabel.TextSize = 15.000
TextLabel.TextWrapped = true

Player.Name = "Player"
Player.Parent = SingleCmdSpam
Player.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Player.Position = UDim2.new(0.334584147, 0, 0.390851974, 0)
Player.Size = UDim2.new(0, 137, 0, 26)
Player.Font = Enum.Font.SourceSans
Player.PlaceholderColor3 = Color3.fromRGB(112, 112, 112)
Player.PlaceholderText = "Player"
Player.Text = ""
Player.TextColor3 = Color3.fromRGB(0, 0, 0)
Player.TextScaled = true
Player.TextSize = 14.000
Player.TextWrapped = true
Player.ClearTextOnFocus = false

UICorner_2.Parent = Player

CurrentCommand = "re "
poo.Name = "poo"
poo.Parent = SingleCmdSpam
poo.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
poo.Position = UDim2.new(0.0909090936, 0, 0.703125, 0)
poo.Size = UDim2.new(0, 137, 0, 26)
poo.Font = Enum.Font.SourceSans
poo.Text = "[poo, re]"
poo.TextColor3 = Color3.fromRGB(170, 255, 255)
poo.TextScaled = true
poo.TextSize = 14.000
poo.TextWrapped = true
poo.MouseButton1Down:Connect(function()
    if CurrentCommand == "re " then
        CurrentCommand = "poo "
    else
        CurrentCommand = "re "
    end
    game.ReplicatedStorage.HDAdminClient.Signals.RequestCommand:InvokeServer(prefix..CurrentCommand..Player.Text)
    chatfunc:FireServer(prefix..CurrentCommand..Player.Text, "All")
end)

UICorner_3.Parent = poo

give.Name = "give"
give.Parent = SingleCmdSpam
give.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
give.Position = UDim2.new(0.570247948, 0, 0.703125, 0)
give.Size = UDim2.new(0, 137, 0, 26)
give.Font = Enum.Font.SourceSans
give.Text = "[give plr all]"
give.TextColor3 = Color3.fromRGB(170, 255, 255)
give.TextScaled = true
give.TextSize = 14.000
give.TextWrapped = true
give.MouseButton1Down:Connect(function()
    if Player.Text == "" then
        Player.PlaceholderText = "Enter player name!"
    return end
    game.ReplicatedStorage.HDAdminClient.Signals.RequestCommand:InvokeServer(prefix.."give "..Player.Text.." all")
    chatfunc:FireServer(prefix.."give "..Player.Text.." all", "All")
end)

UICorner_4.Parent = give
