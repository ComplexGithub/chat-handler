-- I'm terribly sorry about how bad my code is 😭
-- Made by complex#2300 (900187302016471092)

repeat wait() until game:IsLoaded()

if isfolder("chat-handler") == false then
    makefolder("chat-handler")
end
if isfile("chat-handler/settings.txt") == false then
    writefile("chat-handler/settings.txt", game:GetService("HttpService"):JSONEncode({["CurrentTheme"] = "default", ["AutoLogLimit"] = 200}))
end
if isfolder("chat-handler/logs") == false then
    makefolder("chat-handler/logs")
end
if isfolder("chat-handler/themes") == false then
    makefolder("chat-handler/themes")
end
if isfolder("chat-handler/themes/default") == false then
    makefolder("chat-handler/themes/default")
end
if isfile("chat-handler/themes/default/settings.json") == false then
    writefile("chat-handler/themes/default/settings.json", [[{
    "NormalChatColor" : {
        "R" : 255, 
        "G" : 255,
        "B" : 255
    },
    "UserChatColor" : {
        "R" : 2, 
        "G" : 209,
        "B" : 150
    },
    "PrivateChatColor" : {
        "R" : 253, 
        "G" : 46,
        "B" : 105
    }
}]])
end

_G.CurrentTheme = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/settings.txt"))["CurrentTheme"]
_G.AutoLogLimit = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/settings.txt"))["AutoLogLimit"]

local Logs = {}

local ChatHandler = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Chat = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Messages = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local CommandBox = Instance.new("TextBox")
local Search = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Icon = Instance.new("ImageLabel")
local SearchBar = Instance.new("TextBox")
local Title = Instance.new("TextLabel")
local UsingChatBox = Instance.new("BoolValue")
local PlayerValue = Instance.new("ObjectValue")
local AutoScroll = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local EnableLogs = Instance.new("TextLabel")
local Toggle_2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

ChatHandler.Name = "ChatHandler"
ChatHandler.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ChatHandler.ResetOnSpawn = false
ChatHandler.ZIndexBehavior = Enum.ZIndexBehavior.Global

Main.Name = "Main"
Main.Parent = ChatHandler
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 550, 0, 325)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Main

Chat.Name = "Chat"
Chat.Parent = Main
Chat.AnchorPoint = Vector2.new(0.5, 0.5)
Chat.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Chat.Position = UDim2.new(0.5, 0, 0.58461535, 0)
Chat.Size = UDim2.new(0, 530, 0, 250)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Chat

Messages.Name = "Messages"
Messages.Parent = Chat
Messages.Active = true
Messages.AnchorPoint = Vector2.new(0.5, 0.5)
Messages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Messages.BackgroundTransparency = 1.000
Messages.BorderSizePixel = 0
Messages.Position = UDim2.new(0.5, 0, 0.465999991, 0)
Messages.Size = UDim2.new(0, 516, 0, 220)
Messages.ScrollBarThickness = 0

UIListLayout.Parent = Messages
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

CommandBox.Name = "CommandBox"
CommandBox.Parent = Chat
CommandBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandBox.BackgroundTransparency = 1.000
CommandBox.BorderSizePixel = 0
CommandBox.Position = UDim2.new(0.0170000009, 0, 0.915000021, 0)
CommandBox.Size = UDim2.new(0, 510, 0, 17)
CommandBox.ClearTextOnFocus = false
CommandBox.Font = Enum.Font.Gotham
CommandBox.PlaceholderColor3 = Color3.fromRGB(175, 175, 175)
CommandBox.PlaceholderText = "Type here to input commands"
CommandBox.Text = ""
CommandBox.TextColor3 = Color3.fromRGB(175, 175, 175)
CommandBox.TextSize = 10.000
CommandBox.TextWrapped = true
CommandBox.TextXAlignment = Enum.TextXAlignment.Left

Search.Name = "Search"
Search.Parent = Main
Search.AnchorPoint = Vector2.new(0.5, 0.5)
Search.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Search.Position = UDim2.new(0.5, 0, 0.144999996, 0)
Search.Size = UDim2.new(0, 530, 0, 25)

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Search

Icon.Name = "Icon"
Icon.Parent = Search
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0.0274999999, 0, 0.5, 0)
Icon.Size = UDim2.new(0, 15, 0, 15)
Icon.Image = "rbxassetid://7072721559"
Icon.ImageColor3 = Color3.fromRGB(175, 175, 175)

SearchBar.Name = "SearchBar"
SearchBar.Parent = Search
SearchBar.AnchorPoint = Vector2.new(0.5, 0.5)
SearchBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SearchBar.BackgroundTransparency = 1.000
SearchBar.BorderSizePixel = 0
SearchBar.Position = UDim2.new(0.518999994, 0, 0.5, 0)
SearchBar.Size = UDim2.new(0, 490, 1, 0)
SearchBar.Font = Enum.Font.Gotham
SearchBar.PlaceholderColor3 = Color3.fromRGB(175, 175, 175)
SearchBar.PlaceholderText = "Search for a player's messages"
SearchBar.Text = ""
SearchBar.TextColor3 = Color3.fromRGB(175, 175, 175)
SearchBar.TextSize = 10.000
SearchBar.TextXAlignment = Enum.TextXAlignment.Left

Title.Name = "Title"
Title.Parent = Main
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.207000002, 0, 0.057, 0)
Title.Size = UDim2.new(0, 200, 0, 14)
Title.Font = Enum.Font.GothamMedium
Title.Text = "Chat Handler"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UsingChatBox.Name = "UsingChatBox"
UsingChatBox.Parent = ChatHandler
UsingChatBox.Value = false

PlayerValue.Name = "Player"
PlayerValue.Parent = CommandBox
PlayerValue.Value = nil

AutoScroll.Name = "AutoScroll"
AutoScroll.Parent = Main
AutoScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoScroll.BackgroundTransparency = 1.000
AutoScroll.BorderSizePixel = 0
AutoScroll.Position = UDim2.new(0.829999983, 0, 0.0404999815, 0)
AutoScroll.Size = UDim2.new(0, 60, 0, 11)
AutoScroll.Font = Enum.Font.Gotham
AutoScroll.Text = "Auto Scroll"
AutoScroll.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoScroll.TextSize = 11.000
AutoScroll.TextXAlignment = Enum.TextXAlignment.Right

Toggle.Name = "Toggle"
Toggle.Parent = AutoScroll
Toggle.AutoButtonColor = false
Toggle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(1.16666615, 0, 0, 0)
Toggle.Size = UDim2.new(0, 11, 0, 11)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = ""
Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = Toggle

EnableLogs.Name = "EnableLogs"
EnableLogs.Parent = Main
EnableLogs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnableLogs.BackgroundTransparency = 1.000
EnableLogs.BorderSizePixel = 0
EnableLogs.Position = UDim2.new(0.654090881, 0, 0.0399999991, 0)
EnableLogs.Size = UDim2.new(0, 60, 0, 11)
EnableLogs.Font = Enum.Font.Gotham
EnableLogs.Text = "Enable Logs"
EnableLogs.TextColor3 = Color3.fromRGB(255, 255, 255)
EnableLogs.TextSize = 11.000
EnableLogs.TextXAlignment = Enum.TextXAlignment.Right

Toggle_2.Name = "Toggle"
Toggle_2.Parent = EnableLogs
Toggle_2.AutoButtonColor = false
Toggle_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Toggle_2.BorderSizePixel = 0
Toggle_2.Position = UDim2.new(1.16666615, 0, 0, 0)
Toggle_2.Size = UDim2.new(0, 11, 0, 11)
Toggle_2.Font = Enum.Font.SourceSans
Toggle_2.Text = ""
Toggle_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_2.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = Toggle_2

function FileName()
    local File
    local FileNamePrefix = "Log_"
    local Increment = 0
    repeat
        Increment = Increment + 1
        File = pcall(function()
            readfile("chat-handler/logs/" .. game.PlaceId .. "/" .. FileNamePrefix .. Increment .. ".log")
        end)
    until not File
    return FileNamePrefix .. Increment
end

local FileName = FileName()

function CreateMessage(Parent, PlayerText, MessageText, MessageColor, Time)
    local Message = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local Player = Instance.new("TextLabel")
    local PlayerMessage = Instance.new("TextLabel")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local TimeStamp = Instance.new("StringValue")

    Message.Name = "Message"
    Message.Parent = Parent
    Message.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Message.BorderSizePixel = 0
    Message.ClipsDescendants = true
    Message.Size = UDim2.new(1, 0, 0, 50)
    Message.Visible = true

    UICorner_4.CornerRadius = UDim.new(0, 5)
    UICorner_4.Parent = Message

    Player.Name = "Player"
    Player.Parent = Message
    Player.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Player.BackgroundTransparency = 1.000
    Player.BorderSizePixel = 0
    Player.Position = UDim2.new(0.0348837227, 0, 0.344999999, 0)
    Player.Size = UDim2.new(0, 240, 0, 31)
    Player.Font = Enum.Font.Gotham
    Player.Text = PlayerText
    Player.TextColor3 = Color3.fromRGB(255, 255, 255)
    Player.TextSize = 12.000
    Player.TextWrapped = true
    Player.TextXAlignment = Enum.TextXAlignment.Left
    Player.RichText = true

    PlayerMessage.Name = "PlayerMessage"
    PlayerMessage.Parent = Message
    PlayerMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PlayerMessage.BackgroundTransparency = 1.000
    PlayerMessage.BorderSizePixel = 0
    PlayerMessage.Position = UDim2.new(0.42899999, 0, 0, 0)
    PlayerMessage.Size = UDim2.new(0, 240, 0, 31)
    PlayerMessage.Font = Enum.Font.Gotham
    PlayerMessage.Text = MessageText
    PlayerMessage.TextColor3 = MessageColor
    PlayerMessage.TextSize = 12.000
    PlayerMessage.TextWrapped = true
    PlayerMessage.TextXAlignment = Enum.TextXAlignment.Right
    PlayerMessage.RichText = true

    UIListLayout_2.Parent = Message
    UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

    TimeStamp.Name = "TimeStamp"
    TimeStamp.Parent = Message
    TimeStamp.Value = Time
    
    if Player.Text:lower():find(SearchBar.Text:lower()) then
        Message.Visible = true
    else
        Message.Visible = false
    end

    return Message
end

function Drag(Frame)
	local UIS = game:GetService("UserInputService")
	local Tween = game:GetService("TweenService")

	local DragSpeed = 0.4
	local DragStart = nil
	local DragToggle = nil
	local StartPos = nil

	local function UpdateInput(Input)
		local DeltaPos = Input.Position - DragStart
		local Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + DeltaPos.X, StartPos.Y.Scale, StartPos.Y.Offset + DeltaPos.Y)
		Frame:TweenPosition(Position, "Out", "Quint", DragSpeed, true)
	end

	Frame.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			DragToggle = true
			DragStart = Input.Position
			StartPos = Frame.Position
		end
	end)

	Frame.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			DragToggle = false
		end
	end)

	UIS.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			if DragToggle then
				UpdateInput(Input)
			end
		end
	end)
end

function TweenTextColor(Object, Time, Color)
    local TweenInfo = TweenInfo.new(Time)
    local Tween = game:GetService("TweenService"):Create(Object, TweenInfo, {TextColor3 = Color})
    pcall(function()
        Tween:Play()
    end)
end

function TweenBGColor(Object, Time, Color)
    local TweenInfo = TweenInfo.new(Time)
    local Tween = game:GetService("TweenService"):Create(Object, TweenInfo, {BackgroundColor3 = Color})
    pcall(function()
        Tween:Play()
    end)
end

function UpdateLogs(MessageFrame, ColorToUse)
    table.insert(Logs, {["Frame"] = MessageFrame, ["Color"] = ColorToUse,})
end

function FindPlayer(String)
    for _, V in ipairs(game:GetService("Players"):GetPlayers()) do
        if V.DisplayName:lower():find(String:lower()) or V.Name:lower():find(String:lower()) then
            if V ~= nil then
                return V
            end
        end
    end
end

function ReturnTime()
    local OS = os.date("*t")
    local Time
    local Date
    local function FormatNumber(Integer)
        if Integer < 10 then
            return string.format("%02d", Integer)
        else
            return Integer
        end
    end
    if OS["hour"] < 12 then
        Time = FormatNumber(OS["hour"]) .. ":" .. FormatNumber(OS["min"]) .. ":" .. FormatNumber(OS["sec"]) .. " AM"
        Date = FormatNumber(OS["month"]) .. "/" .. FormatNumber(OS["day"]) .. "/" .. OS["year"]
    else
        Time = FormatNumber(OS["hour"]) .. ":" .. FormatNumber(OS["min"]) .. ":" .. FormatNumber(OS["sec"]) .. " PM"
        Date = FormatNumber(OS["month"]) .. "/" .. FormatNumber(OS["day"]) .. "/" .. OS["year"]
    end
    return Time, Date
end

function SaveChat(AutoLog)
    if AutoLog then
        if #Messages:GetChildren() - 1 >= tonumber(_G.AutoLogLimit) then
            local Time, Date = ReturnTime()
            local CreationTime = "Created at: " .. Time .. ", " .. Date .. "\n"
            local Info = ""
            for _, V in ipairs(Messages:GetChildren()) do
                if V:IsA("Frame") then
                    Info = Info .. "\n" .. V.TimeStamp.Value .. " - [" .. V.Player.Text:gsub("<font color='#AAAAAA'>", ""):gsub("</font>", "") .. "]: " .. V.PlayerMessage.Text
                    V:Destroy()
                    if not (#Messages:GetChildren() - 1 >= tonumber(_G.AutoLogLimit)) then
                        break
                    end
                end
            end
            if isfolder("chat-handler/logs/" .. game.PlaceId) == true then
                if isfile("chat-handler/logs/" .. game.PlaceId .. "/" .. FileName .. ".log") == true then
                    appendfile("chat-handler/logs/" .. game.PlaceId .. "/" .. FileName .. ".log", Info)
                else
                    writefile("chat-handler/logs/" .. game.PlaceId .. "/" .. FileName .. ".log", CreationTime .. Info)
                end
            else
                makefolder("chat-handler/logs/" .. game.PlaceId)
                writefile("chat-handler/logs/" .. game.PlaceId .. "/" .. FileName .. ".log", CreationTime .. Info)
            end
        end
    else
        local Time, Date = ReturnTime()
        local CreationTime = "Created at: " .. Time .. ", " .. Date .. "\n"
        local Info = ""
        for _, V in ipairs(Messages:GetChildren()) do
            if V:IsA("Frame") then
                Info = Info .. "\n" .. V.TimeStamp.Value .. " - [" .. V.Player.Text:gsub("<font color='#AAAAAA'>", ""):gsub("</font>", "") .. "]: " .. V.PlayerMessage.Text
                V:Destroy()
            end
        end
        if isfolder("chat-handler/logs/" .. game.PlaceId) == true then
            if isfile("chat-handler/logs/" .. game.PlaceId .. "/" .. FileName .. ".log") == true then
                appendfile("chat-handler/logs/" .. game.PlaceId .. "/" .. FileName .. ".log", Info)
            else
                writefile("chat-handler/logs/" .. game.PlaceId .. "/" .. FileName .. ".log", CreationTime .. Info)
            end
        else
            makefolder("chat-handler/logs/" .. game.PlaceId)
            writefile("chat-handler/logs/" .. game.PlaceId .. "/" .. FileName .. ".log", CreationTime .. Info)
        end
    end
end

coroutine.wrap(function()
    while task.wait() do
        for _, Log in ipairs(Logs) do
            pcall(function()
                local MinimumSize = 31
                local Frame = Log["Frame"]
                local Message = Frame:FindFirstChild("PlayerMessage")

                local FrameSize = UDim2.new(
                    Frame.Size.X.Scale, Frame.Size.X.Offset,
                    Frame.Size.Y.Scale, math.max(MinimumSize + 19, Message.TextBounds.Y + 19)
                )

                local MessageSize = UDim2.new(
                    Message.Size.X.Scale, Message.Size.X.Offset,
                    Message.Size.Y.Scale, math.max(MinimumSize, Message.TextBounds.Y)
                )

                local ColorInfo = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/themes/" .. _G.CurrentTheme .. "/settings.json"))[Log["Color"]]
                local NewColor = Color3.fromRGB(ColorInfo.R, ColorInfo.G, ColorInfo.B)

                TweenTextColor(Message, 0.2, NewColor)

                Frame:TweenSize(FrameSize, "Out", "Quint", 0.1, true)
                Message:TweenSize(MessageSize, "Out", "Quint", 0.1, true)
            end)
        end
    end
end)()

coroutine.wrap(function()
    while wait() do
        Messages.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + UIListLayout.Padding.Offset)
        if _G.AutoScroll then
            Messages.CanvasPosition = Messages.CanvasPosition + Vector2.new(0, UIListLayout.AbsoluteContentSize.Y + UIListLayout.Padding.Offset)
        end
    end
end)()

coroutine.wrap(function()
    while task.wait() do
        SaveChat(true)
    end
end)()

Drag(Main)

if _G.AutoScroll then
    TweenBGColor(Toggle, 0.2, Color3.fromRGB(55, 255, 88))
end
if not _G.AutoScroll then
    TweenBGColor(Toggle, 0.2, Color3.fromRGB(17, 17, 17))
end
if _G.Enabled then
    TweenBGColor(Toggle_2, 0.2, Color3.fromRGB(55, 255, 88))
end
if not _G.Enabled then
    TweenBGColor(Toggle_2, 0.2, Color3.fromRGB(17, 17, 17))
end

Toggle.MouseButton1Click:Connect(function()
    _G.AutoScroll = not _G.AutoScroll
    if _G.AutoScroll then
        TweenBGColor(Toggle, 0.2, Color3.fromRGB(55, 255, 88))
    end
    if not _G.AutoScroll then
        TweenBGColor(Toggle, 0.2, Color3.fromRGB(17, 17, 17))
    end
end)

Toggle_2.MouseButton1Click:Connect(function()
    _G.Enabled = not _G.Enabled
    if _G.Enabled then
        TweenBGColor(Toggle_2, 0.2, Color3.fromRGB(55, 255, 88))
    end
    if not _G.Enabled then
        TweenBGColor(Toggle_2, 0.2, Color3.fromRGB(17, 17, 17))
    end
end)

SearchBar.Changed:Connect(function()
    for _, V in ipairs(Messages:GetChildren()) do
        if V:IsA("Frame") then
            if V.Player.Text:lower():find(SearchBar.Text:lower()) then
                V.Visible = true
            else
                V.Visible = false
            end
        end
    end
end)

SearchBar.FocusLost:Connect(function(EnterPressed)
    if EnterPressed then
        SearchBar.Text = FindPlayer(SearchBar.Text).Name
    end
end)

CommandBox.FocusLost:Connect(function(EnterPressed)
    if EnterPressed then
        if CommandBox.Text:find("^commands$") or CommandBox.Text:find("^cmds$") then
            local CommandNames = {
                "commands (cmds)", "savechat (schat)", "limit (l) [value]", "theme (th) [name]", "restart (rs)", "close (cl)",
            }
            for _, Command in ipairs(CommandNames) do
                rconsoleprint(Command .. "\n")
            end
        end
        if CommandBox.Text:find("^savechat$") or CommandBox.Text:find("^schat$") then
            SaveChat(false)
        end
        if CommandBox.Text:find("^limit%s+") or CommandBox.Text:find("^l%s+") then
            local Limit = CommandBox.Text:gsub("%w+%s+", "")
            _G.AutoLogLimit = tonumber(Limit)
            writefile("chat-handler/settings.txt", game:GetService("HttpService"):JSONEncode({["CurrentTheme"] = _G.CurrentTheme, ["AutoLogLimit"] = Limit}))
        end
        if CommandBox.Text:find("^theme%s+") or CommandBox.Text:find("^th%s+")then
            local Theme = CommandBox.Text:gsub("%w+%s+", "")
            if isfolder("chat-handler/themes/" .. Theme) then
                _G.CurrentTheme = Theme
                writefile("chat-handler/settings.txt", game:GetService("HttpService"):JSONEncode({["CurrentTheme"] = Theme, ["AutoLogLimit"] = _G.AutoLogLimit}))
            end
        end
        if CommandBox.Text:find("^restart$") or CommandBox.Text:find("^rs$") then
            if #Messages:GetChildren() > 1 then
                SaveChat(false)
            end
            syn.queue_on_teleport(game:HttpGetAsync("https://raw.githubusercontent.com/ComplexGithub/chat-handler/main/lua/init.lua"))
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
        if CommandBox.Text:find("^close$") or CommandBox.Text:find("^cl$") then
            if #Messages:GetChildren() > 1 then
                SaveChat(false)
            end
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
        CommandBox.Text = ""
    end
end)

for _, V in ipairs(game:GetService("Players"):GetPlayers()) do
    V.Chatted:Connect(function(PlayerText)
        if _G.Enabled then
            local P = "@" .. V.DisplayName .. " <font color='#AAAAAA'>(" .. V.Name .. ")</font>"
            if V == game:GetService("Players").LocalPlayer then
                local Clone
                if PlayerText:find("/w") or PlayerText:find("/whisper") then
                    local Time, _ = ReturnTime()
                    local Temp = PlayerText
                    Temp = Temp:gsub("/w ", "")
                    local PlayerName
                    if Temp:find("_") then
                        PlayerName = Temp:match("%w+_%w+")
                    else
                        PlayerName = Temp:match("%w+")
                    end
                    local TextInput = Temp:gsub(PlayerName, ""):gsub("%s%s", "")
                    local ColorInfo = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/themes/" .. _G.CurrentTheme .. "/settings.json"))["PrivateChatColor"]
                    local NewColor = Color3.fromRGB(ColorInfo.R, ColorInfo.G, ColorInfo.B)
                    Clone = CreateMessage(Messages, P .. " > " .. PlayerName, TextInput, NewColor, Time)
                    UpdateLogs(Clone, "PrivateChatColor")
                else
                    local Time, _ = ReturnTime()
                    local ColorInfo = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/themes/" .. _G.CurrentTheme .. "/settings.json"))["UserChatColor"]
                    local NewColor = Color3.fromRGB(ColorInfo.R, ColorInfo.G, ColorInfo.B)
                    Clone = CreateMessage(Messages, P, PlayerText, NewColor, Time)
                    UpdateLogs(Clone, "UserChatColor")
                end
            else
                local Clone
                if PlayerText:find("/w") or PlayerText:find("/whisper") then
                    local Time, _ = ReturnTime()
                    local Temp = PlayerText
                    Temp = Temp:gsub("/w ", "")
                    local PlayerName
                    if Temp:find("_") then
                        PlayerName = Temp:match("%w+_%w+")
                    else
                        PlayerName = Temp:match("%w+")
                    end
                    local TextInput = Temp:gsub(PlayerName, ""):gsub("%s%s", "")
                    local ColorInfo = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/themes/" .. _G.CurrentTheme .. "/settings.json"))["PrivateChatColor"]
                    local NewColor = Color3.fromRGB(ColorInfo.R, ColorInfo.G, ColorInfo.B)
                    Clone = CreateMessage(Messages, P .. " > " .. PlayerName, TextInput, NewColor, Time)
                    UpdateLogs(Clone, "PrivateChatColor")
                else
                    local Time, _ = ReturnTime()
                    local ColorInfo = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/themes/" .. _G.CurrentTheme .. "/settings.json"))["NormalChatColor"]
                    local NewColor = Color3.fromRGB(ColorInfo.R, ColorInfo.G, ColorInfo.B)
                    Clone = CreateMessage(Messages, P, PlayerText, NewColor, Time)
                    UpdateLogs(Clone, "NormalChatColor")
                end
            end
        end
    end)
end

game:GetService("Players").PlayerAdded:Connect(function(V)
    V.Chatted:Connect(function(PlayerText)
        if _G.Enabled then
            local P = "@" .. V.DisplayName .. " <font color='#AAAAAA'>(" .. V.Name .. ")</font>"
            if V == game:GetService("Players").LocalPlayer then
                local Clone
                if PlayerText:find("/w") or PlayerText:find("/whisper") then
                    local Time, _ = ReturnTime()
                    local Temp = PlayerText
                    Temp = Temp:gsub("/w ", "")
                    local PlayerName = Temp:match("%w+")
                    local TextInput = Temp:gsub(PlayerName, ""):gsub("%s%s", "")
                    local ColorInfo = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/themes/" .. _G.CurrentTheme .. "/settings.json"))["PrivateChatColor"]
                    local NewColor = Color3.fromRGB(ColorInfo.R, ColorInfo.G, ColorInfo.B)
                    Clone = CreateMessage(Messages, P .. " > " .. PlayerName, TextInput, NewColor, Time)
                    UpdateLogs(Clone, "PrivateChatColor")
                else
                    local Time, _ = ReturnTime()
                    local ColorInfo = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/themes/" .. _G.CurrentTheme .. "/settings.json"))["UserChatColor"]
                    local NewColor = Color3.fromRGB(ColorInfo.R, ColorInfo.G, ColorInfo.B)
                    Clone = CreateMessage(Messages, P, PlayerText, NewColor, Time)
                    UpdateLogs(Clone, "UserChatColor")
                end
            else
                local Clone
                if PlayerText:find("/w") or PlayerText:find("/whisper") then
                    local Time, _ = ReturnTime()
                    local Temp = PlayerText
                    Temp = Temp:gsub("/w ", "")
                    local PlayerName = Temp:match("%w+")
                    local TextInput = Temp:gsub(PlayerName, ""):gsub("%s%s", "")
                    local ColorInfo = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/themes/" .. _G.CurrentTheme .. "/settings.json"))["PrivateChatColor"]
                    local NewColor = Color3.fromRGB(ColorInfo.R, ColorInfo.G, ColorInfo.B)
                    Clone = CreateMessage(Messages, P .. " > " .. PlayerName, TextInput, NewColor, Time)
                    UpdateLogs(Clone, "PrivateChatColor")
                else
                    local Time, _ = ReturnTime()
                    local ColorInfo = game:GetService("HttpService"):JSONDecode(readfile("chat-handler/themes/" .. _G.CurrentTheme .. "/settings.json"))["NormalChatColor"]
                    local NewColor = Color3.fromRGB(ColorInfo.R, ColorInfo.G, ColorInfo.B)
                    Clone = CreateMessage(Messages, P, PlayerText, NewColor, Time)
                    UpdateLogs(Clone, "NormalChatColor")
                end
            end
        end
    end)
end)
