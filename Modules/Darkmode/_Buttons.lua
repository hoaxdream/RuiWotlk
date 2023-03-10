local IsAddOnLoaded, hooksecurefunc = IsAddOnLoaded, hooksecurefunc
local pairs, type, _G = pairs, type, _G
local GetInventoryItemQuality, GetItemQualityColor = GetInventoryItemQuality, GetItemQualityColor

local sections = { "TOPLEFT", "TOPRIGHT", "BOTTOMLEFT", "BOTTOMRIGHT", "TOP", "BOTTOM", "LEFT", "RIGHT" }

local slots = {
    [0] = "Ammo", "Head", "Neck", "Shoulder",
    "Shirt", "Chest", "Waist", "Legs", "Feet",
    "Wrist", "Hands", "Finger0", "Finger1",
    "Trinket0", "Trinket1",
    "Back", "MainHand", "SecondaryHand", "Ranged", "Tabard",
}

local function SkinColor(self, r, g, b, a)
    local t = self.borderTextures
    if not t then
        return
    end
    for _, tex in pairs(t) do
        tex:SetVertexColor(0.25, 0.25, 0.25)
    end
end

local function GetBorderColor(self)
    return self.borderTextures and self.borderTextures.TOPLEFT:GetVertexColor()
end

local function addBorder(object, offset, drawlayer, dbf)
    if type(object) ~= "table" or not object.CreateTexture or object.borderTextures then
        return
    end

    local t = {}
    offset = offset or 0

    for i = 1, #sections do
        --local x = object:CreateTexture(nil, drawlayer or "BACKGROUND", nil, 1) -- Original
        local x = object:CreateTexture(nil, "BACKGROUND", nil, 1) -- Test
        if dbf then
            x:SetTexture("Interface\\AddOns\\RuiWotlk\\Media\\Skins\\debuff-" .. sections[i])
        else
            x:SetTexture("Interface\\AddOns\\RuiWotlk\\Media\\Skins\\border-" .. sections[i])
        end
        t[sections[i]] = x
    end

    t.TOPLEFT:SetWidth(8)
    t.TOPLEFT:SetHeight(8)
    t.TOPLEFT:SetPoint("BOTTOMRIGHT", object, "TOPLEFT", 4 + offset, -4 - offset)

    t.TOPRIGHT:SetWidth(8)
    t.TOPRIGHT:SetHeight(8)
    t.TOPRIGHT:SetPoint("BOTTOMLEFT", object, "TOPRIGHT", -4 - offset, -4 - offset)

    t.BOTTOMLEFT:SetWidth(8)
    t.BOTTOMLEFT:SetHeight(8)
    t.BOTTOMLEFT:SetPoint("TOPRIGHT", object, "BOTTOMLEFT", 4 + offset, 4 + offset)

    t.BOTTOMRIGHT:SetWidth(8)
    t.BOTTOMRIGHT:SetHeight(8)
    t.BOTTOMRIGHT:SetPoint("TOPLEFT", object, "BOTTOMRIGHT", -4 - offset, 4 + offset)

    t.TOP:SetHeight(8)
    t.TOP:SetPoint("TOPLEFT", t.TOPLEFT, "TOPRIGHT", 0, 0)
    t.TOP:SetPoint("TOPRIGHT", t.TOPRIGHT, "TOPLEFT", 0, 0)

    t.BOTTOM:SetHeight(8)
    t.BOTTOM:SetPoint("BOTTOMLEFT", t.BOTTOMLEFT, "BOTTOMRIGHT", 0, 0)
    t.BOTTOM:SetPoint("BOTTOMRIGHT", t.BOTTOMRIGHT, "BOTTOMLEFT", 0, 0)

    t.LEFT:SetWidth(8)
    t.LEFT:SetPoint("TOPLEFT", t.TOPLEFT, "BOTTOMLEFT", 0, 0)
    t.LEFT:SetPoint("BOTTOMLEFT", t.BOTTOMLEFT, "TOPLEFT", 0, 0)

    t.RIGHT:SetWidth(8)
    t.RIGHT:SetPoint("TOPRIGHT", t.TOPRIGHT, "BOTTOMRIGHT", 0, 0)
    t.RIGHT:SetPoint("BOTTOMRIGHT", t.BOTTOMRIGHT, "TOPRIGHT", 0, 0)

    object.borderTextures = t
    object.SkinColor = SkinColor
    object.GetBorderColor = GetBorderColor
end

local function styleActionButton(bu)
    if not bu or (bu and bu.rabs_styled) then
        return
    end

    local name = bu:GetName()
    local ho = _G[name .. "HotKey"]
    local fbg = _G[name .. "FloatingBG"]
    local ic = _G[name .. "Icon"]
    local nt = _G[name .. "NormalTexture"]

    addBorder(bu, .1, "OVERLAY")
    SkinColor(bu, 0.25, 0.25, 0.25)

    ic:SetTexCoord(.03, .97, .03, .97)
    nt:SetAlpha(0)

    if bu:GetNormalTexture() then
        bu:GetNormalTexture():SetTexture("")
    end

    if fbg then
        fbg:Hide()
    end

    bu.rabs_styled = true
end

local function init()
    for _, v in pairs(slots) do
        local bu = _G["Character" .. v .. "Slot"]
        addBorder(bu, 1, "OVERLAY")
        SkinColor(bu, 0.25, 0.25, 0.25)
        bu:SetNormalTexture("")
    end

    for i = 1, 12 do
        styleActionButton(_G["ActionButton" .. i])
        styleActionButton(_G["MultiBarRightButton" .. i])
        styleActionButton(_G["MultiBarLeftButton" .. i])
        styleActionButton(_G["MultiBarBottomLeftButton" .. i])
        styleActionButton(_G["MultiBarBottomRightButton" .. i])
    end

    for i = 1, 6 do
        styleActionButton(_G["OverrideActionBarButton" .. i])
    end

    addBorder(MainMenuBarBackpackButton, 1)
    SkinColor(MainMenuBarBackpackButton, 0.25, 0.25, 0.25)

    for _, v in pairs(slots) do
        local bu = _G["Character" .. v .. "Slot"]
        addBorder(bu, 0, "OVERLAY")
        SkinColor(bu, 0.25, 0.25, 0.25)
    end

    for i = 0, 3 do
        -- Bag icons
        local bu = _G["CharacterBag" .. i .. "Slot"]
        addBorder(bu, 1, "OVERLAY")
        SkinColor(bu, 0.25, 0.25, 0.25)
    end

    for i = 1, 12 do
        -- Bagslots
        for k = 1, 36 do
            local bu = _G["ContainerFrame" .. i .. "Item" .. k]
            addBorder(bu, 1, "OVERLAY")
            SkinColor(bu, 0.25, 0.25, 0.25)
            if bu:GetNormalTexture() then
                bu:GetNormalTexture():SetTexture("")
            end
            bu.bg = bu:CreateTexture(nil, "BACKGROUND")
            bu.bg:SetAllPoints()
            bu.bg:SetTexture [[Interface\Buttons\UI-Slot-Background]]
            bu.bg:SetTexCoord(.075, .6, .075, .6)
            bu.bg:SetAlpha(.4)
        end
    end

    for i = 1, 7 do
        local bu = _G["StanceButton" .. i]
        styleActionButton(bu)
    end

    for i = 1, 28 do
        local bu = _G["BankFrameItem" .. i]
        addBorder(bu, 0, "OVERLAY")
        SkinColor(bu, 0.25, 0.25, 0.25)
        if bu:GetNormalTexture() then
            bu:GetNormalTexture():SetTexture("")
        end
        bu.bg = bu:CreateTexture(nil, "BACKGROUND")
        bu.bg:SetAllPoints()
        bu.bg:SetTexture [[Interface\Buttons\UI-Slot-Background]]
        bu.bg:SetTexCoord(.075, .6, .075, .6)
        bu.bg:SetAlpha(.4)
    end

    local tf = CreateFrame("Frame", nil, TargetFrameSpellBar)
    tf:SetAllPoints(TargetFrameSpellBar.Icon)
    addBorder(tf, 0)
    SkinColor(tf, 0.25, 0.25, 0.25)

    local ff = CreateFrame("Frame", nil, FocusFrameSpellBar)
    ff:SetAllPoints(FocusFrameSpellBar.Icon)
    addBorder(ff, 0)
    SkinColor(ff, 0.25, 0.25, 0.25)

    for i = 1, 3 do
        local bu = _G["TempEnchant" .. i]
        local bo = _G["TempEnchant" .. i .. "Border"]
        local du = _G["TempEnchant" .. i .. "Duration"]
        bu:SetNormalTexture("")
        bo:SetTexture("")
        addBorder(bu, .8, "OVERLAY")
        SkinColor(bu, .7, 0, 1)
        du:SetJustifyH("CENTER")
        du:ClearAllPoints()
        du:SetPoint("CENTER", bu, "BOTTOM", 0, -7.5)
    end
end

local function applySkin(b)
    local name = b:GetName()
    local ic = _G[name .. "Icon"]
    local bo = _G[name .. "Border"]

    if name:match("Debuff") then
        ic:SetTexCoord(0.02, 0.98, 0.02, 0.98)
        addBorder(b, .25, "OVERLAY", true)
        if bo then
            local re, gr, bl = bo:GetVertexColor()
            SkinColor(b, re, gr, bl)
            bo:SetAlpha(0)
        end
        return
    end

    if b and not b.borderTextures then
        b:SetNormalTexture("")
        ic:SetTexCoord(0.02, 0.98, 0.02, 0.98)
        addBorder(b, .25)
        SkinColor(b, 0.25, 0.25, 0.25)

        b.duration:ClearAllPoints()
        b.duration:SetPoint("CENTER", b, "BOTTOM", 0, -7.5)

        b.count:SetFont(STANDARD_TEXT_FONT, 11, "THINOUTLINE")
        b.count:ClearAllPoints()
        b.count:SetPoint("TOPRIGHT", 0, -1)
        b.styled = true
    end
end

local function UpdatePaperDoll()
    for i, v in pairs(slots) do
        local bu = _G["Character"..v.."Slot"]
        local q = GetInventoryItemQuality("player", i)
        if q and q > 1 then
            local re, gr, bl = GetItemQualityColor(q)
            SkinColor(bu, re*1.4, gr*1.4, bl*1.4)
        else
            SkinColor(bu, 0.25, 0.25, 0.25)
        end
    end
end

local function HookAuras()
    hooksecurefunc("TargetFrame_UpdateAuras", function()
        for i = 1, 32 do
            local bu = _G["TargetFrameBuff" .. i]
            if bu then
                if not bu.skin then
                    addBorder(bu, .5)
                    _G["TargetFrameBuff" .. i .. "Icon"]:SetTexCoord(.02, .98, .02, .98)
                    bu.skin = true
                end
                SkinColor(bu)
            else
                break
            end
        end
        for i = 1, 16 do
            local bu = _G["TargetFrameDebuff" .. i]
            if bu then
                if not bu.skin then
                    addBorder(bu, .5, "OVERLAY", true)
                    _G["TargetFrameDebuff" .. i .. "Icon"]:SetTexCoord(.02, .98, .02, .98)
                    bu.skin = true
                end
                local re, gr, bl = _G["TargetFrameDebuff" .. i .. "Border"]:GetVertexColor()
                SkinColor(bu, re, gr, bl)
            else
                break
            end
        end
        for i = 1, 32 do
            local bu = _G["FocusFrameBuff" .. i]
            if bu then
                if not bu.skin then
                    addBorder(bu, .5)
                    _G["FocusFrameBuff" .. i .. "Icon"]:SetTexCoord(.02, .98, .02, .98)
                    bu.skin = true
                end
                SkinColor(bu)
            else
                break
            end
        end
        for i = 1, 16 do
            local bu = _G["FocusFrameDebuff" .. i]
            if bu then
                if not bu.skin then
                    addBorder(bu, .5, "OVERLAY", true)
                    _G["FocusFrameDebuff" .. i .. "Icon"]:SetTexCoord(.02, .98, .02, .98)
                    bu.skin = true
                end
                local re, gr, bl = _G["FocusFrameDebuff" .. i .. "Border"]:GetVertexColor()
                SkinColor(bu, re, gr, bl)
            else
                break
            end
        end
    end)
end

local e3 = CreateFrame("Frame")
e3:RegisterEvent("PLAYER_LOGIN")
e3:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        init()
        hooksecurefunc("AuraButton_Update", function(self, index)
            local button = _G[self .. index]
            if button and not button.styled then
                applySkin(button)
            end
        end)
        hooksecurefunc("ActionButton_ShowGrid", function(btn)
            if btn then
                _G[btn:GetName() .. "NormalTexture"]:SetVertexColor(1, 1, 1, 1)
            end
        end)
        HookAuras()
    end
    self:UnregisterEvent("PLAYER_LOGIN")
    self:SetScript("OnEvent", nil)
end)