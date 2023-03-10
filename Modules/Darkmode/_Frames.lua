-- Credits to: https://www.curseforge.com/wow/addons/rougeui
local pairs = pairs
local doneInit

local function FrameColour()
    for _,v in pairs({
        PlayerFrameTexture,
        PlayerFrameAlternateManaBarBorder,
        PlayerFrameAlternateManaBarLeftBorder,
        PlayerFrameAlternateManaBarRightBorder,
        PlayerFrameAlternatePowerBarBorder,
        PlayerFrameAlternatePowerBarLeftBorder,
        PlayerFrameAlternatePowerBarRightBorder,
        TargetFrameTextureFrameTexture,
        TargetFrameToTTextureFrameTexture,
        FocusFrameToTTextureFrameTexture,
        FocusFrameTextureFrameTexture,
        PetFrameTexture,
        PartyMemberFrame1Texture,
        PartyMemberFrame2Texture,
        PartyMemberFrame3Texture,
        PartyMemberFrame4Texture,
        PartyMemberFrame1PetFrameTexture,
        PartyMemberFrame2PetFrameTexture,
        PartyMemberFrame3PetFrameTexture,
        PartyMemberFrame4PetFrameTexture,
        SlidingActionBarTexture0,
        SlidingActionBarTexture1,
        MainMenuBarTexture0,
        MainMenuBarTexture1,
        MainMenuBarTexture2,
        MainMenuBarTexture3,
        MainMenuMaxLevelBar0,
        MainMenuMaxLevelBar1,
        MainMenuMaxLevelBar2,
        MainMenuMaxLevelBar3,
        MainMenuXPBarTexture0,
        MainMenuXPBarTexture1,
        MainMenuXPBarTexture2,
        MainMenuXPBarTexture3,
        MainMenuXPBarTexture4,
        ReputationWatchBar.StatusBar.WatchBarTexture0,
        ReputationWatchBar.StatusBar.WatchBarTexture1,
        ReputationWatchBar.StatusBar.WatchBarTexture2,
        ReputationWatchBar.StatusBar.WatchBarTexture3,
        ReputationWatchBar.StatusBar.XPBarTexture0,
        ReputationWatchBar.StatusBar.XPBarTexture1,
        ReputationWatchBar.StatusBar.XPBarTexture2,
        ReputationWatchBar.StatusBar.XPBarTexture3,
        MinimapBorder,
        MirrorTimer1Border,
        MirrorTimer2Border,
        MirrorTimer3Border,
        MiniMapTrackingBorder,
        MiniMapLFGFrameBorder,
        MiniMapBattlefieldBorder,
        MiniMapMailBorder,
        MiniMapBorderTop,
        CastingBarFrame.Border,
        TargetFrameSpellBar.Border,
        FocusFrameSpellBar.Border,
        Rune1BorderTexture,
        Rune2BorderTexture,
        Rune3BorderTexture,
        Rune4BorderTexture,
        Rune5BorderTexture,
        Rune6BorderTexture,
        ArenaEnemyFrame1Texture,
        ArenaEnemyFrame2Texture,
        ArenaEnemyFrame3Texture,
        ArenaEnemyFrame4Texture,
        ArenaEnemyFrame5Texture,
        ArenaEnemyFrame1SpecBorder,
        ArenaEnemyFrame2SpecBorder,
        ArenaEnemyFrame3SpecBorder,
        ArenaEnemyFrame4SpecBorder,
        ArenaEnemyFrame5SpecBorder,
        ArenaEnemyFrame1PetFrameTexture,
        ArenaEnemyFrame2PetFrameTexture,
        ArenaEnemyFrame3PetFrameTexture,
        ArenaEnemyFrame4PetFrameTexture,
        ArenaEnemyFrame5PetFrameTexture,
        ArenaPrepFrame1Texture,
        ArenaPrepFrame2Texture,
        ArenaPrepFrame3Texture,
        ArenaPrepFrame4Texture,
        ArenaPrepFrame5Texture,
        ArenaPrepFrame1SpecBorder,
        ArenaPrepFrame2SpecBorder,
        ArenaPrepFrame3SpecBorder,
        ArenaPrepFrame4SpecBorder,
    }) do
        v:SetVertexColor(0.25, 0.25, 0.25)
    end

    for _, v in pairs({
        MainMenuBarLeftEndCap,
        MainMenuBarRightEndCap,
        StanceBarLeft,
        StanceBarMiddle,
        StanceBarRight,
        GameMenuFrameHeader,
        GameMenuFrame.BottomEdge,
        GameMenuFrame.BottomLeftCorner,
        GameMenuFrame.BottomRightCorner,
        GameMenuFrame.LeftEdge,
        GameMenuFrame.RightEdge,
        GameMenuFrame.TopEdge,
        GameMenuFrame.TopLeftCorner,
        GameMenuFrame.TopRightCorner,
        InterfaceOptionsFrameHeader,
        InterfaceOptionsFrame.BottomEdge,
        InterfaceOptionsFrame.BottomLeftCorner,
        InterfaceOptionsFrame.BottomRightCorner,
        InterfaceOptionsFrame.LeftEdge,
        InterfaceOptionsFrame.RightEdge,
        InterfaceOptionsFrame.TopEdge,
        InterfaceOptionsFrame.TopLeftCorner,
        InterfaceOptionsFrame.TopRightCorner,
        VideoOptionsFrameHeader,
        VideoOptionsFrame.BottomEdge,
        VideoOptionsFrame.BottomLeftCorner,
        VideoOptionsFrame.BottomRightCorner,
        VideoOptionsFrame.LeftEdge,
        VideoOptionsFrame.RightEdge,
        VideoOptionsFrame.TopEdge,
        VideoOptionsFrame.TopLeftCorner,
        VideoOptionsFrame.TopRightCorner,
        AddonListBotLeftCorner,
        AddonListBotRightCorner,
        AddonListBottomBorder,
        AddonListLeftBorder,
        AddonListRightBorder,
        AddonListTopBorder,
        AddonListTopLeftCorner,
        AddonListTopRightCorner,
        AddonListBtnCornerLeft,
        AddonListBtnCornerRight,
        AddonListBg,
        AddonListTitleBg,
        ExhaustionTickNormal,
        AddonListEnableAllButton_RightSeparator,
        AddonListDisableAllButton_RightSeparator,
        AddonListCancelButton_LeftSeparator,
        AddonListOkayButton_LeftSeparator,
        StaticPopup1.BottomEdge,
        StaticPopup1.BottomLeftCorner,
        StaticPopup1.BottomRightCorner,
        StaticPopup1.LeftEdge,
        StaticPopup1.RightEdge,
        StaticPopup1.TopEdge,
        StaticPopup1.TopLeftCorner,
        StaticPopup1.TopRightCorner,
        StaticPopup2.BottomEdge,
        StaticPopup2.BottomLeftCorner,
        StaticPopup2.BottomRightCorner,
        StaticPopup2.LeftEdge,
        StaticPopup2.RightEdge,
        StaticPopup2.TopEdge,
        StaticPopup2.TopLeftCorner,
        StaticPopup2.TopRightCorner,
        StaticPopup3.BottomEdge,
        StaticPopup3.BottomLeftCorner,
        StaticPopup3.BottomRightCorner,
        StaticPopup3.LeftEdge,
        StaticPopup3.RightEdge,
        StaticPopup3.TopEdge,
        StaticPopup3.TopLeftCorner,
        StaticPopup3.TopRightCorner,
        StaticPopup4.BottomEdge,
        StaticPopup4.BottomLeftCorner,
        StaticPopup4.BottomRightCorner,
        StaticPopup4.LeftEdge,
        StaticPopup4.RightEdge,
        StaticPopup4.TopEdge,
        StaticPopup4.TopLeftCorner,
        StaticPopup4.TopRightCorner,
        DropDownList1MenuBackdrop.BottomEdge,
        DropDownList1MenuBackdrop.BottomLeftCorner,
        DropDownList1MenuBackdrop.BottomRightCorner,
        DropDownList1MenuBackdrop.LeftEdge,
        DropDownList1MenuBackdrop.RightEdge,
        DropDownList1MenuBackdrop.TopEdge,
        DropDownList1MenuBackdrop.TopLeftCorner,
        DropDownList1MenuBackdrop.TopRightCorner,
        DropDownList2MenuBackdrop.BottomEdge,
        DropDownList2MenuBackdrop.BottomLeftCorner,
        DropDownList2MenuBackdrop.BottomRightCorner,
        DropDownList2MenuBackdrop.LeftEdge,
        DropDownList2MenuBackdrop.RightEdge,
        DropDownList2MenuBackdrop.TopEdge,
        DropDownList2MenuBackdrop.TopLeftCorner,
        DropDownList2MenuBackdrop.TopRightCorner,
        ContainerFrame1BackgroundTop,
        ContainerFrame1BackgroundMiddle1,
        ContainerFrame1BackgroundBottom,
        ContainerFrame2BackgroundTop,
        ContainerFrame2BackgroundMiddle1,
        ContainerFrame2BackgroundBottom,
        ContainerFrame3BackgroundTop,
        ContainerFrame3BackgroundMiddle1,
        ContainerFrame3BackgroundBottom,
        ContainerFrame4BackgroundTop,
        ContainerFrame4BackgroundMiddle1,
        ContainerFrame4BackgroundBottom,
        ContainerFrame5BackgroundTop,
        ContainerFrame5BackgroundMiddle1,
        ContainerFrame5BackgroundBottom,
        ContainerFrame6BackgroundTop,
        ContainerFrame6BackgroundMiddle1,
        ContainerFrame6BackgroundBottom,
        ContainerFrame7BackgroundTop,
        ContainerFrame7BackgroundMiddle1,
        ContainerFrame7BackgroundBottom,
        ContainerFrame8BackgroundTop,
        ContainerFrame8BackgroundMiddle1,
        ContainerFrame8BackgroundBottom,
        ContainerFrame9BackgroundTop,
        ContainerFrame9BackgroundMiddle1,
        ContainerFrame9BackgroundBottom,
        ContainerFrame10BackgroundTop,
        ContainerFrame10BackgroundMiddle1,
        ContainerFrame10BackgroundBottom,
        ContainerFrame11BackgroundTop,
        ContainerFrame11BackgroundMiddle1,
        ContainerFrame11BackgroundBottom,
        ContainerFrame12BackgroundTop,
        ContainerFrame12BackgroundMiddle1,
        ContainerFrame12BackgroundBottom,
        MerchantFrameInsetInsetBottomBorder,
        TradeFrameBg,
        TradeFrameBottomBorder,
        TradeFrameButtonBottomBorder,
        TradeFrameLeftBorder,
        TradeFrameRightBorder,
        TradeFrameTitleBg,
        TradeFrameTopBorder,
        TradeFrameTopRightCorner,
        TradeRecipientLeftBorder,
        TradeFrameBtnCornerLeft,
        TradeFrameBtnCornerRight,
        TradeRecipientBG,
        TradeFramePortraitFrame,
        TradeRecipientPortraitFrame,
        TradeRecipientBotLeftCorner,
        PVPReadyDialog.BottomEdge,
        PVPReadyDialog.BottomLeftCorner,
        PVPReadyDialog.BottomRightCorner,
        PVPReadyDialog.LeftEdge,
        PVPReadyDialog.RightEdge,
        PVPReadyDialog.TopEdge,
        PVPReadyDialog.TopLeftCorner,
        PVPReadyDialog.TopRightCorner,
        MailFrameBg,
        MailFrameBotLeftCorner,
        MailFrameBotRightCorner,
        MailFrameBottomBorder,
        MailFrameBtnCornerLeft,
        MailFrameBtnCornerRight,
        MailFrameButtonBottomBorder,
        MailFrameLeftBorder,
        MailFramePortraitFrame,
        MailFrameRightBorder,
        MailFrameTitleBg,
        MailFrameTopBorder,
        MailFrameTopLeftCorner,
        MailFrameTopRightCorner,
        MailFrameInsetInsetBottomBorder,
        MailFrameInsetInsetBotLeftCorner,
        MailFrameInsetInsetBotRightCorner,
        LootFrameBg,
        LootFrameRightBorder,
        LootFrameLeftBorder,
        LootFrameTopBorder,
        LootFrameBottomBorder,
        LootFrameTopRightCorner,
        LootFrameTopLeftCorner,
        LootFrameBotRightCorner,
        LootFrameBotLeftCorner,
        LootFrameInsetInsetTopRightCorner,
        LootFrameInsetInsetTopLeftCorner,
        LootFrameInsetInsetBotRightCorner,
        LootFrameInsetInsetBotLeftCorner,
        LootFrameInsetInsetRightBorder,
        LootFrameInsetInsetLeftBorder,
        LootFrameInsetInsetTopBorder,
        LootFrameInsetInsetBottomBorder,
        LootFramePortraitFrame,
        MerchantFrameTitleBg,
        MerchantFrameTopBorder,
        MerchantFrameBtnCornerRight,
        MerchantFrameBtnCornerLeft,
        MerchantFrameBottomRightBorder,
        MerchantFrameBottomLeftBorder,
        MerchantFrameButtonBottomBorder,
        MerchantFrameBg
    }) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- Totem Frame
for i = 1, MAX_TOTEMS do
    local _, totem = _G["TotemFrameTotem"..i]:GetChildren()
    totem:GetRegions():SetVertexColor(0.25, 0.25, 0.25)
end

-- Bank Frame
local a, b, c, d, e = BankFrame:GetRegions()
for _, v in pairs({a, b, c, d, e}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- Merchant Frame
local a, b, c, d, e, f  = MerchantFrameTab1:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f = MerchantFrameTab2:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local _, a, b, c, d, _, _, _, e, f, g, h, j, k = MerchantFrame:GetRegions()
for _, v in pairs({a, b, c ,d, e, f, g, h, j, k}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- Paperdoll
local a, b, c, d, _, e = PaperDollFrame:GetRegions()
for _, v in pairs({a, b, c, d, e})do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, _, c = PetPaperDollFrameCompanionFrame:GetRegions()
for _, v in pairs({a, c}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local _, b, c, d, e = PetPaperDollFrame:GetRegions()
for _, v in pairs({b, c, d, e}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- Token Frame
local a, b, c, d = TokenFrame:GetRegions()
for _, v in pairs({a, b, c, d}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

for i = 1, 20 do
    local vertex = _G["TokenFrameContainerButton"..i.."Stripe"]
    vertex:SetVertexColor(0.25, 0.25, 0.25)
end

-- Skill
local a, b, c, d = SkillFrame:GetRegions()
for _, v in pairs({a, b, c ,d}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- Reputation Frame
local a, b, c, d = ReputationFrame:GetRegions()
for _, v in pairs({a, b, c, d}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

for _, v in pairs({ReputationDetailCorner, ReputationDetailDivider}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- PvP Frame
local _, _, c, d, e, f, g, h = PVPFrame:GetRegions()
for _, v in pairs({c, d, e, f, g, h }) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- Character Tabs
local a, b, c, d, e, f  = CharacterFrameTab1:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f  = CharacterFrameTab2:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f  = CharacterFrameTab3:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f = CharacterFrameTab4:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f = CharacterFrameTab5:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- Social Frame
local a, b, c, d, e, f, g, _, i, j, k, l, n, o, p, q, r, _, _ = FriendsFrame:GetRegions()
for _, v in pairs({
    a, b, c, d, e, f, g, h, i, j, k, l, n, o, p, q, r,
    FriendsFrameInset:GetRegions(),
    WhoFrameListInset:GetRegions()
}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

FriendsFrameInsetInsetBottomBorder:SetVertexColor(0.25, 0.25, 0.25)
WhoFrameEditBoxInset:GetRegions():SetVertexColor(0.25, 0.25, 0.25)
WhoFrameDropDownLeft:SetVertexColor(0.25, 0.25, 0.25)
WhoFrameDropDownMiddle:SetVertexColor(0.25, 0.25, 0.25)
WhoFrameDropDownRight:SetVertexColor(0.25, 0.25, 0.25)

local a, b, c, d, e, f, g, h, i = WhoFrameEditBoxInset:GetRegions()
for _, v in pairs({a, b, c, d, e, f, g, h, i}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f = FriendsFrameTab1:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f = FriendsFrameTab2:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f = FriendsFrameTab3:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f = FriendsFrameTab4:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- Guild Frame
local _, _, _, _, e, f = GuildFrame:GetRegions()
for _, v in pairs({e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

-- Mail Frame
local a, b, c, d, e, f = MailFrameTab1:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

local a, b, c, d, e, f = MailFrameTab2:GetRegions()
for _, v in pairs({a, b, c, d, e, f}) do
    v:SetVertexColor(0.25, 0.25, 0.25)
end

for i = 1, MAX_SKILLLINE_TABS  do
    local vertex = _G["SpellBookSkillLineTab"..i]:GetRegions()
    vertex:SetVertexColor(0.25, 0.25, 0.25)
end

-- Should remain untouched
for _,v in pairs({
    BankPortraitTexture,
    BankFrameTitleText,
    WhoFrameTotals,
    MerchantFramePortrait
}) do
    v:SetVertexColor(1, 1, 1)
end

ChatFrame1EditBoxLeft:SetVertexColor(0.25, 0.25, 0.25)
ChatFrame1EditBoxMid:SetVertexColor(0.25, 0.25, 0.25)
ChatFrame1EditBoxRight:SetVertexColor(0.25, 0.25, 0.25)

GameTooltip:SetBackdropBorderColor(0.25, 0.25, 0.25)
GameTooltip.SetBackdropBorderColor = function() end end

local function NewVariables()
    -- Reputation Bar
    for i = 1, 15 do
        local FrameBG = _G["ReputationBar"..i.."Background"]
        FrameBG:SetVertexColor(0.25, 0.25, 0.25)
    end

    -- Spellbook Frame
    local _, a, b, c, d = SpellBookFrame:GetRegions()
    for _, v in pairs({a, b, c, d}) do
        v:SetVertexColor(0.25, 0.25, 0.25)
    end

    if not SpellBookFrame.Material then
        SpellBookFrame.Material = SpellBookFrame:CreateTexture(nil, "OVERLAY", nil, 7)
        SpellBookFrame.Material:SetTexture("Interface\\AddOns\\RuiWotlk\\Media\\Skins\\QuestBG.tga")
        SpellBookFrame.Material:SetWidth(547)
        SpellBookFrame.Material:SetHeight(541)
        SpellBookFrame.Material:SetPoint("TOPLEFT", SpellBookFrame, 22, -74)
        SpellBookFrame.Material:SetVertexColor(.9, .9, .9)
    end

    -- Quest Log Frame
    local _, b, c, _, d = QuestLogFrame:GetRegions()
    for _, v in pairs({ b, c, d}) do
        v:SetVertexColor(0.25, 0.25, 0.25)
    end

    if IsAddOnLoaded("Leatrix_Plus") and LeaPlusDB["EnhanceQuestLog"] == "On" then
        QuestLogFrame.Material = QuestLogFrame:CreateTexture(nil, "OVERLAY", nil, 7)
        QuestLogFrame.Material:SetTexture("Interface\\AddOns\\RuiWotlk\\Media\\Skins\\QuestBG.tga")
        QuestLogFrame.Material:SetWidth(531)
        QuestLogFrame.Material:SetHeight(625)
        QuestLogFrame.Material:SetPoint("TOPLEFT", QuestLogDetailScrollFrame, -10, 0)
        QuestLogFrame.Material:SetVertexColor(.9, .9, .9)
    else
        QuestLogFrame.Material = QuestLogFrame:CreateTexture(nil, "OVERLAY", nil, 7)
        QuestLogFrame.Material:SetTexture("Interface\\AddOns\\RuiWotlk\\Media\\Skins\\QuestBG.tga")
        QuestLogFrame.Material:SetWidth(531)
        QuestLogFrame.Material:SetHeight(511)
        QuestLogFrame.Material:SetPoint("TOPLEFT", QuestLogDetailScrollFrame, -10, 0)
        QuestLogFrame.Material:SetVertexColor(.9, .9, .9)
    end

    for _, v in pairs({
        GossipFrameGreetingPanel,
        GossipFrame.GreetingPanel,
        QuestFrameRewardPanel,
        QuestFrameDetailPanel,
        QuestFrameProgressPanel,
        QuestFrameGreetingPanel,
    }) do
        for _, j in pairs({v:GetRegions()}) do
            j:SetVertexColor(0.25, 0.25, 0.25)
        end

        if not v.Material then 
            v.Material = v:CreateTexture(nil, "OVERLAY", nil, 7)
            v.Material:SetTexture("Interface\\AddOns\\RuiWotlk\\Media\\Skins\\QuestBG.tga")
            v.Material:SetWidth(514)
            v.Material:SetHeight(522)
            v.Material:SetPoint("TOPLEFT", v, 22, -74)
            v.Material:SetVertexColor(.9, .9, .9)
        end

        local _, _, _, nr = GetBuildInfo()

        if ((v == GossipFrameGreetingPanel) and nr == 30400) or ((v == GossipFrame.GreetingPanel) and nr == 30401) or v == QuestFrameGreetingPanel then
            v.Corner = v:CreateTexture(nil, "OVERLAY", nil, 7)
            v.Corner:SetTexture("Interface\\QuestFrame\\UI-Quest-BotLeftPatch")
            v.Corner:SetSize(132, 64)
            v.Corner:SetPoint("BOTTOMLEFT", v, 21, 68)
            v.Corner:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Wardrobe
    local _, a, b, c, d = DressUpFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e}) do
        v:SetVertexColor(0.25, 0.25, 0.25)
    end

    -- Worldmap
    local a, b, c, d, e ,f, g, h, i, j, k, l = WorldMapFrame.BorderFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e, f, g, h, i, j, k, l}) do
        v:SetVertexColor(.5, .5, .5)
    end

    -- Readycheck
    local _, a = ReadyCheckListenerFrame:GetRegions()
    a:SetVertexColor(0.25, 0.25, 0.25)

    -- Scoreboard
    local a, b, c, d, e, f, _, _, _, _ ,_, l = WorldStateScoreFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e, f, l}) do
        v:SetVertexColor(0.25, 0.25, 0.25)
    end

    -- Taxi Frame
    local _, a, b, c, d = TaxiFrame:GetRegions()
    for _, v in pairs({a, b, c, d}) do
        v:SetVertexColor(0.25, 0.25, 0.25)
    end

    -- Tabard Frame
    local _, a, b, c, d = TabardFrame:GetRegions()
    for _, v in pairs({a, b, c, d, e}) do
        v:SetVertexColor(0.25, 0.25, 0.25)
    end

    -- Pet Stable
    for _,  v in pairs({PetStableFrame:GetRegions()}) do
        if v:GetObjectType() == "Texture" and v ~= PetStableFramePortrait then
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    doneInit = true
end

local function BlizzFrames(addon)
    -- Glyph Frame
    if addon == "Blizzard_GlyphUI" then
        local a, _, c, d, e ,f, g, h, i = GlyphFrame:GetRegions()
        for _, v in pairs({a, c, d, e ,f, g, h, i})do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Calendar Frame
    if addon == "Blizzard_Calendar" then
        local vectors = {CalendarFrame:GetRegions()}
        for i = 1, 13 do
            vectors[i]:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    if addon == "Blizzard_BindingUI" then
        -- Keybind Frame
        local vectors = {KeyBindingFrame:GetRegions()}
        for i = 1, 1 do
            vectors[i]:SetVertexColor(0.25, 0.25, 0.25)
        end

        for i = 1, 10 do
            local vectors = {KeyBindingFrame.header:GetRegions()}
            vectors[i]:SetVertexColor(0.25, 0.25, 0.25)
        end

        for _, v in pairs({
            KeyBindingFrame.BottomEdge,
            KeyBindingFrame.TopEdge,
            KeyBindingFrame.LeftEdge,
            KeyBindingFrame.RightEdge,
            KeyBindingFrame.BottomLeftCorner,
            KeyBindingFrame.TopLeftCorner,
            KeyBindingFrame.BottomRightCorner,
            KeyBindingFrame.TopRightCorner,
            KeyBindingFrameBottomBorder,
            KeyBindingFrameTopBorder,
            KeyBindingFrameRightBorder,
            KeyBindingFrameLeftBorder,
            KeyBindingFrameBottomLeftCorner,
            KeyBindingFrameBottomRightCorner,
            KeyBindingFrameTopLeftCorner,
            KeyBindingFrameTopRightCorner,
        }) do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    if addon == "Blizzard_TimeManager" then
        for _, v in pairs({StopwatchFrame:GetRegions()})do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end

        local a, b, c = StopwatchTabFrame:GetRegions()
        for _, v in pairs({a, b, c})do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end

        local a, b, c, d, e, f, g, h, i, j, k, l, n, o, p, q, r =  TimeManagerFrame:GetRegions()
        for _, v in pairs({a, b, c, d, e, f, g, h, i, j, k, l, n, o, p, q, r})do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Recolor Achievement
    if addon == "Blizzard_AchievementUI" then
        local a, b, c, d, e, f, g, h, i, j, k, l, m, n, o = AchievementFrame:GetRegions()
        for _, v in pairs({a, b, c, d, e, f, g, h, i, j, k, l, m, n, o}) do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Barber
    if addon == "Blizzard_BarbershopUI" then
        local a, b, c = BarberShopFrame:GetRegions()
        for _, v in pairs({a, b, c}) do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Talent Frame
    if addon == "Blizzard_TalentUI" then
        local vectors = {PlayerTalentFrame:GetRegions()}
        for i = 2, 6 do
            vectors[i]:SetVertexColor(0.25, 0.25, 0.25)
        end

        local vectors = {PlayerTalentFramePointsBar:GetRegions()}
        for i = 1, 4 do
            vectors[i]:SetVertexColor(0.25, 0.25, 0.25)
        end

        PlayerSpecTab1Background:SetVertexColor(0.25, 0.25, 0.25)
        PlayerSpecTab2Background:SetVertexColor(0.25, 0.25, 0.25)

        for _, v in pairs({
            PlayerTalentFrameScrollFrameBackgroundTop,
            PlayerTalentFrameScrollFrameBackgroundBottom,
            PlayerTalentFrameTab1LeftDisabled,
            PlayerTalentFrameTab1MiddleDisabled,
            PlayerTalentFrameTab1RightDisabled,
            PlayerTalentFrameTab2LeftDisabled,
            PlayerTalentFrameTab2MiddleDisabled,
            PlayerTalentFrameTab2RightDisabled,
            PlayerTalentFrameTab3LeftDisabled,
            PlayerTalentFrameTab3MiddleDisabled,
            PlayerTalentFrameTab3RightDisabled,
            PlayerTalentFrameTab4LeftDisabled,
            PlayerTalentFrameTab4MiddleDisabled,
            PlayerTalentFrameTab4RightDisabled,
        }) do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Tradeskill
    if addon == "Blizzard_TradeSkillUI" then
        local _, b, c, d, e, f, _, h, i = TradeSkillFrame:GetRegions()
        for _, v in pairs({b, c, d, e, f, h, i}) do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Class Trainer Frame
    if addon == "Blizzard_TrainerUI" then
        local _, a, b, c, d, _, e, f, g, h = ClassTrainerFrame:GetRegions()

        for _, v in pairs({ a, b, c, d, e, f, g, h})do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Inspect/Inspect Talent/Inspect PvP Frame
    if addon == "Blizzard_InspectUI" then
        for _, v in pairs({
            InspectTalentFramePointsBarBorderLeft,
            InspectTalentFramePointsBarBorderMiddle,
            InspectTalentFramePointsBarBorderRight,
            InspectTalentFramePointsBarBackground,
            InspectFrameTab1LeftDisabled,
            InspectFrameTab1MiddleDisabled,
            InspectFrameTab1RightDisabled,
            InspectFrameTab2LeftDisabled,
            InspectFrameTab2MiddleDisabled,
            InspectFrameTab2RightDisabled,
            InspectFrameTab3LeftDisabled,
            InspectFrameTab3MiddleDisabled,
            InspectFrameTab3RightDisabled,
            InspectTalentFrameTab1Left,
            InspectTalentFrameTab1Right,
            InspectTalentFrameTab1Middle,
            InspectTalentFrameTab1LeftDisabled,
            InspectTalentFrameTab1MiddleDisabled,
            InspectTalentFrameTab1RightDisabled,
            InspectTalentFrameTab2Left,
            InspectTalentFrameTab2Right,
            InspectTalentFrameTab2Middle,
            InspectTalentFrameTab2LeftDisabled,
            InspectTalentFrameTab2MiddleDisabled,
            InspectTalentFrameTab2RightDisabled,
            InspectTalentFrameTab3Left,
            InspectTalentFrameTab3Right,
            InspectTalentFrameTab3Middle,
            InspectTalentFrameTab3LeftDisabled,
            InspectTalentFrameTab3MiddleDisabled,
            InspectTalentFrameTab3RightDisabled,
        }) do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
        local vectors = {InspectPaperDollFrame:GetRegions()}
        for i = 1, 4 do
            vectors[i]:SetVertexColor(0.25, 0.25, 0.25)
        end

        local vectors = {InspectPVPFrame:GetRegions()}
        for i = 1, 5 do
            vectors[i]:SetVertexColor(0.25, 0.25, 0.25)
        end

        local vectors = {InspectTalentFrame:GetRegions()}
        for i = 1, 5 do
            vectors[i]:SetVertexColor(0.25, 0.25, 0.25)
        end

        local vectors = {InspectTalentFrameScrollFrame:GetRegions()}
        for i = 1, 2 do
            vectors[i]:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Dungeon Finder
    if addon == "Blizzard_LookingForGroupUI" then
        local a, b, c = LFGListingFrame:GetRegions()
        for _, v in pairs({a, b, c}) do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end

        local a, b, c, d  = LFGBrowseFrame:GetRegions()
        for _, v in pairs({a, b, c, d}) do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end

    -- Macro
    if addon == "Blizzard_MacroUI" then
        local a, b, c, d, e, f, g, h, i, j, k, l, n, o, p, q, r = MacroFrame:GetRegions()
        for _, v in pairs({a, b, c, d, e, f, g, h, i, j, k, l, n, o, p, q, r})do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end

        for _, v in pairs({
            MacroFrameTab1Left,
            MacroFrameTab1Right,
            MacroFrameTab1Middle,
            MacroFrameTab1LeftDisabled,
            MacroFrameTab1MiddleDisabled,
            MacroFrameTab1RightDisabled,
            MacroFrameTab2Left,
            MacroFrameTab2Right,
            MacroFrameTab2Middle,
            MacroFrameTab2LeftDisabled,
            MacroFrameTab2MiddleDisabled,
            MacroFrameTab2RightDisabled,
        }) do
            v:SetVertexColor(0.25, 0.25, 0.25)
        end
    end
end

local Framecolor = CreateFrame("Frame")

Framecolor:RegisterEvent("ADDON_LOADED")
Framecolor:SetScript("OnEvent", function(self, event, addon)
    if event == "ADDON_LOADED" then
        FrameColour()
        NewVariables()
        if doneInit then
            self:UnregisterEvent("ADDON_LOADED")
            self:SetScript("OnEvent", nil)
        end
    end
end)

local Blizz = CreateFrame("Frame")
Blizz:RegisterEvent("ADDON_LOADED")
Blizz:SetScript("OnEvent", function(_, event, addon)
    if event == "ADDON_LOADED" then
        BlizzFrames(addon)
    end
end)