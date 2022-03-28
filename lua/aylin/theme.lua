local aylin = require("aylin.colors")

local theme = {}

theme.loadSyntax = function ()
  local syntax = {
    Type = {fg = aylin.aylin_sky},
    StorageClass = {fg = aylin.aylin_marzipan},
    Structure = {fg = aylin.aylin_sky},
    Constant = {fg = aylin.aylin_d_gray},
    Character = {fg = aylin.aylin_green},
    Number = {fg = aylin.aylin_purple},
    Boolean = {fg = aylin.aylin_marzipan},
    Float = {fg = aylin.aylin_purple},
    Statement = {fg = aylin.aylin_aubergine},
    Label = { fg = aylin.aylin_marzipan }, -- case, default, etc.
    Operator = { fg = aylin.aylin_marzipan }, -- sizeof", "+", "*", etc.
    Exception = { fg = aylin.aylin_pink }, -- try, catch, throw
    PreProc = { fg = aylin.aylin_sap }, -- generic Preprocessor
    Include = { fg = aylin.aylin_sap }, -- preprocessor #include
    Define = { fg = aylin.aylin_marzipan }, -- preprocessor #define
    Macro = { fg = aylin.aylin_marzipan }, -- same as Define
    Typedef = { fg = aylin.aylin_sap }, -- A typedef
    PreCondit = { fg = aylin.aylin_marzipan }, -- preprocessor #if, #else, #endif, etc.
    Special = { fg = aylin.aylin_aubergine }, -- any special symbol
    SpecialChar = { fg = aylin.aylin_aubergine }, -- special character in a constant
    Tag = { fg = aylin.aylin_sky }, -- you can use CTRL-] on this
    Delimiter = { fg = aylin.aylin_d_gray }, -- character that needs attention like , or .
    SpecialComment = { fg = aylin.aylin_s_gray }, -- special things inside a comment
    Debug = { fg = aylin.aylin_pink }, -- debugging statements
    Underlined = { fg = aylin.aylin_purple, bg = aylin.none, style = "underline" }, -- text that stands out, HTML links
    Ignore = { fg = aylin.aylin_black }, -- left blank, hidden
    Error = { fg = aylin.aylin_pink, bg = aylin.none, style = "bold,underline" }, -- any erroneous construct
    Todo = { fg = aylin.aylin_green, bg = aylin.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Conceal = { fg = aylin.aylin_sky, bg = aylin.aylin_black },

    htmlLink = { fg = aylin.aylin_purple, style = "underline" },
    htmlH1 = { fg = aylin.aylin_turquoise, style = "bold" },
    htmlH2 = { fg = aylin.aylin_turquoise, style = "bold" },
    htmlH3 = { fg = aylin.aylin_turquoise, style = "bold" },
    htmlH4 = { fg = aylin.aylin_turquoise, style = "bold" },
    htmlH5 = { fg = aylin.aylin_turquoise, style = "bold" },
    markdownH1 = { fg = aylin.aylin_turquoise, style = "bold" },
    markdownH2 = { fg = aylin.aylin_turquoise, style = "bold" },
    markdownH3 = { fg = aylin.aylin_turquoise, style = "bold" },
    markdownH1Delimiter = { fg = aylin.aylin_d_gray, },
    markdownH2Delimiter = { fg = aylin.aylin_d_gray },
    markdownH3Delimiter = { fg = aylin.aylin_d_gray },
  },
  return syntax
end

theme.loadEditor = function ()
  local editor = {
    NormalFloat = { fg = aylin.aylin_l_white, bg = aylin.aylin_black }, -- normal text and background color
    FloatBorder = { fg = aylin.aylin_l_white, bg = aylin.aylin_black }, -- normal text and background color
    ColorColumn = { fg = aylin.none, bg = aylin.aylin_black }, --  used for the columns set with 'colorcolumn'
    Conceal = { fg = aylin.aylin_black }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = aylin.aubergine, bg = aylin.none, style = "reverse" }, -- the character under the cursor
    CursorIM = { fg = aylin.aylin_aubergine, bg = aylin.none, style = "reverse" }, -- like Cursor, but used when in IME mode
    Directory = { fg = aylin.aylin_sky, bg = aylin.none }, -- directory names (and other special names in listings)
    DiffAdd = { fg = aylin.aylin_green, bg = aylin.none, style = "reverse" }, -- diff mode: Added line
    DiffChange = { fg = aylin.aylin_sap, bg = aylin.none, style = "reverse" }, --  diff mode: Changed line
    DiffDelete = { fg = aylin.aylin_pink, bg = aylin.none, style = "reverse" }, -- diff mode: Deleted line
    DiffText = { fg = aylin.aylin_purple, bg = aylin.none, style = "reverse" }, -- diff mode: Changed text within a changed line
    EndOfBuffer = { fg = aylin.aylin_black },
    ErrorMsg = { fg = aylin.none },
    Folded = { fg = aylin.aylin_d_gray, bg = aylin.none, style = "italic" },
    FoldColumn = { fg = aylin.aylin_l_sky },
    IncSearch = { fg = aylin.aylin_sap, bg = aylin.aylin_marzipan },
    LineNr = { fg = aylin.aylin_l_black },
    CursorLineNr = { fg = aylin.aylin_l_white },
    MatchParen = { fg = aylin.aylin_turquoise, bg = aylin.none, style = "bold" },
    ModeMsg = { fg = aylin.aylin_l_white },
    MoreMsg = { fg = aylin.aylin_l_white },
    NonText = { fg = aylin.aylin_d_gray },
    Pmenu = { fg = aylin.aylin_l_white, bg = aylin.aylin_black },
    PmenuSel = { fg = aylin.aylin_l_white, bg = aylin.aylin_turquoise },
    PmenuSbar = { fg = aylin.aylin_l_white, bg = nord.nord2_gui },
    PmenuThumb = { fg = aylin.aylin_l_white, bg = nord.nord4_gui },
    Question = { fg = nord.nord14_gui },
    QuickFixLine = { fg = aylin.aylin_l_white, bg = aylin.none, style = "reverse" },
    qfLineNr = { fg = aylin.aylin_l_white, bg = aylin.none, style = "reverse" },
    Search = { fg = aylin.aylin_turquoise, bg = aylin.aylin_l_white, style = "reverse" },
    SpecialKey = { fg = aylin.aylin_l_sky}
    SpellBad = { fg = aylin.aylin_pink, bg = aylin.none, style = "italic,undercurl" },
    SpellCap = { fg = aylin.aylin_l_sky, bg = aylin.none, style = "italic,undercurl" },
    SpellLocal = { fg = aylin.aylin_sky, bg = aylin.none, style = "italic,undercurl" },
    SpellRare = { fg = aylin.aylin_green, bg = aylin.none, style = "italic,undercurl" },
    StatusLine = { fg = aylin.aylin_l_white, bg = aylin.aylin_black },
    StatusLineNC = { fg = aylin.aylin_l_white, bg = aylin.aylin_l_black },
    StatusLineTerm = { fg = aylin.aylin_l_white, bg = aylin.aylin_black },
    StatusLineTermNC = { fg = aylin.aylin_l_white, bg = aylin.aylin_black },
    TabLineFill = { fg = aylin.aylin_l_white, bg = aylin.none },
    TablineSel = { fg = aylin.aylin_black, bg = aylin.aylin_turquoise },
    Tabline = { fg = aylin.aylin_l_white, bg = aylin.aylin_black },
    Title = { fg = aylin.aylin_green, bg = aylin.none, style = "bold" },
    Visual = { fg = aylin.none, bg = aylin.aylin_black },
    VisualNOS = { fg = aylin.none, bg = aylin.aylin_black },
    WarningMsg = { fg = aylin.aylin_purple },
    WildMenu = { fg = aylin.aylin_marzipan, bg = aylin.none, style = "bold" },
    CursorColumn = { fg = aylin.none, bg = aylin.aylin_black },
    CursorLine = { fg = aylin.none, bg = aylin.aylin_black },
    ToolbarLine = { fg = aylin.aylin_l_white, bg = aylin.aylin_black },
    ToolbarButton = { fg = aylin.aylin_l_white, bg = aylin.none, style = "bold" },
    NormalMode = { fg = aylin.aylin_l_white, bg = aylin.none, style = "reverse" },
    InsertMode = { fg = aylin.aylin_green, bg = aylin.none, style = "reverse" },
    ReplacelMode = { fg = aylin.aylin_pink, bg = aylin.none, style = "reverse" },
    VisualMode = { fg = aylin.aylin_turquoise, bg = aylin.none, style = "reverse" },
    CommandMode = { fg = aylin.aylin_l_white, bg = aylin.none, style = "reverse" },
    Warnings = { fg = aylin.aylin_purple },

    healthError = { fg = aylin.aylin_pink },
    healthSuccess = { fg = aylin.aylin_green },
    healthWarning = { fg = aylin.aylin_purple },

    -- dashboard
    DashboardShortCut = { fg = aylin.aylin_sky },
    DashboardHeader = { fg = aylin.aylin_ },
    DashboardCenter = { fg = nord.nord8_gui },
    DashboardFooter = { fg = nord.nord14_gui, style = "italic" },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = nord.nord0_gui },
    BufferLineFill = { bg = nord.nord0_gui },
  }
end
