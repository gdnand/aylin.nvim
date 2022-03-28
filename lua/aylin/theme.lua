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
    PmenuSbar = { fg = aylin.aylin_l_white, bg = aylin.aylin_black },
    PmenuThumb = { fg = aylin.aylin_l_white, bg = aylin.aylin_d_gray },
    Question = { fg = aylin.aylin_green },
    QuickFixLine = { fg = aylin.aylin_l_white, bg = aylin.none, style = "reverse" },
    qfLineNr = { fg = aylin.aylin_l_white, bg = aylin.none, style = "reverse" },
    Search = { fg = aylin.aylin_turquoise, bg = aylin.aylin_l_white, style = "reverse" },
    SpecialKey = { fg = aylin.aylin_l_sky},
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
    DashboardHeader = { fg = aylin.aylin_l_sky },
    DashboardCenter = { fg = aylin.aylin_aubergine },
    DashboardFooter = { fg = aylin.aylin_green, style = "italic" },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = aylin.aylin_black },
    BufferLineFill = { bg = aylin.aylin_black },
  }
end

theme.loadTerminal = function()
  vim.g.terminal_color_0 = aylin.aylin_black
  vim.g.terminal_color_1 = aylin.aylin_pink
  vim.g.terminal_color_2 = aylin.aylin_green
  vim.g.terminal_color_3 = aylin.aylin_sap
  vim.g.terminal_color_4 = aylin.aylin_turquoise
  vim.g.terminal_color_5 = aylin.aylin_purple
  vim.g.terminal_color_6 = aylin.aylin_l_sky
  vim.g.terminal_color_7 = aylin.aylin_l_white
  vim.g.terminal_color_8 = aylin.aylin_black
  vim.g.terminal_color_9 = aylin.aylin_pink
  vim.g.terminal_color_10 = aylin.aylin_green
  vim.g.terminal_color_11 = aylin.aylin_sap
  vim.g.terminal_color_12 = aylin.aylin_sky
  vim.g.terminal_color_13 = aylin.aylin_purple
  vim.g.terminal_color_14 = aylin.aylin_l_sky
  vim.g.terminal_color_15 = aylin.aylin_l_white
end

theme.loadTreeSitter = function()
  local treesitter = {
    TSAnnotation = { fg = aylin.aylin_marzipan }, -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
    TSConstructor = { fg = aylin.aylin_turquoise }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSConstant = { fg = aylin.aylin_sap }, -- For constants
    TSFloat = { fg = aylin.aylin_purple }, -- For floats
    TSNumber = { fg = aylin.aylin_purple }, -- For all number

    TSAttribute = { fg = aylin.aylin_purple }, -- (unstable) TODO: docs
    TSVariable = { fg = aylin.aylin_l_white, style = "bold" }, -- Any variable name that does not have another highlight.
    TSVariableBuiltin = { fg = aylin.aylin_sap, style = "bold" },
    TSBoolean = { fg = aylin.aylin_sky, style = "bold" }, -- For booleans.
    TSConstBuiltin = { fg = aylin.aylin_sap, style = "bold" }, -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro = { fg = aylin.aylin_marzipan, style = "bold" }, -- For constants that are defined by macros: `NULL` in C.
    TSError = { fg = aylin.aylin_pink }, -- For syntax/parser errors.
    TSException = { fg = aylin.aylin_purple }, -- For exception related keywords.
    TSFuncMacro = { fg = aylin.aylin_l_sky }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude = { fg = aylin.aylin_turquoise }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSLabel = { fg = aylin.aylin_marzipan }, -- For labels: `label:` in C and `:label:` in Lua.
    TSOperator = { fg = aylin.aylin_sap }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = aylin.aylin_aubergine }, -- For parameters of a function.
    TSParameterReference = { fg = aylin.aylin_turquoise }, -- For references to parameters of a function.
    TSPunctDelimiter = { fg = aylin.aylin_l_black }, -- For delimiters ie: `.`
    TSPunctBracket = { fg = aylin.aylin_l_black }, -- For brackets and parens.
    TSPunctSpecial = { fg = aylin.aylin_l_black }, -- For special punctutation that does not fall in the catagories before.
    TSSymbol = { fg = aylin.aylin_purple }, -- For identifiers referring to symbols or atoms.
    TSType = { fg = aylin.aylin_sky}, -- For types.
    TSTypeBuiltin = { fg = aylin.aylin_sky }, -- For builtin types.
    TSTag = { fg = aylin.aylin_aubergine}, -- Tags like html tag names.
    TSTagDelimiter = { fg = aylin.aylin_l_black }, -- Tag delimiter like `<` `>` `/`
    TSText = { fg = aylin.aylin_l_white }, -- For strings considenord11_gui text in a markup language.
    TSTextReference = { fg = aylin.aylin_pink }, -- FIXME
    TSEmphasis = { fg = aylin.aylin_l_sky }, -- For text to be represented with emphasis.
    TSUnderline = { fg = aylin.aylin_l_white, bg = aylin.none, style = "underline" }, -- For text to be represented with an underline.
    TSTitle = { fg = aylin.aylin_turquoise, bg = aylin.none, style = "bold" }, -- Text that is part of a title.
    TSLiteral = { fg = aylin.aylin_green }, -- Literal text.
    TSURI = { fg = aylin.aylin_purple }, -- Any URI like a link or email.
    TSComment = {fg = aylin.aylin_d_gray},
    TSConditional = {fg = aylin.aylin_marzipan},
    TSFunction = {fg = aylin.aylin_turquoise},
    TSMethod = {fg = aylin.aylin_turquoise},
    TSFuncBuiltin = {fg = aylin.aylin_turquoise},
    TSNamespace = {fg = aylin.aylin_sap},
    TSField = {fg = aylin.aylin_aubergine},
    TSProperty = {fg = aylin.aylin_aubergine},
    TSKeyword = {fg = aylin.aylin_marzipan},
    TSKeywordFunction = {fg = aylin.aylin_sky}, -- like sizeof i guess...
    TSKeywordReturn = {fg = aylin.aylin_pink},
    TSKeywordOperator = {fg = aylin.aylin_sky},
    TSString = {fg = aylin.aylin_green},
    TSStringRegex = {fg = aylin.aylin_green},
    TSStringEscape = {fg = aylin.aylin_marzipan},
    TSCharacter = {fg = aylin.aylin_green},

	}
  return treesitter
end

theme.loadLSP = function()

  local lsp = {
    LspDiagnosticsDefaultError = { fg = aylin.aylin_pink }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsSignError = { fg = aylin.aylin_pink }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsFloatingError = { fg = aylin.aylin_pink }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextError = { fg = aylin.aylin_pink }, -- Virtual text "Error"
    LspDiagnosticsUnderlineError = { style = "undercurl", sp = aylin.aylin_pink }, -- used to underline "Error" diagnostics.
    LspDiagnosticsDefaultWarning = { fg = aylin.aylin_purple }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning = { fg = aylin.aylin_purple }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsFloatingWarning = { fg = aylin.aylin_purple }, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextWarning = { fg = aylin.aylin_purple }, -- Virtual text "Warning"
    LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = aylin.aylin_purple }, -- used to underline "Warning" diagnostics.
    LspDiagnosticsDefaultInformation = { fg = aylin.aylin_turquoise }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsSignInformation = { fg = aylin.aylin_turquoise }, -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsFloatingInformation = { fg = aylin.aylin_turquoise }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextInformation = { fg = aylin.aylin_turquoise }, -- Virtual text "Information"
    LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = aylin.aylin_turquoise }, -- used to underline "Information" diagnostics.
    LspDiagnosticsDefaultHint = { fg = aylin.aylin_l_sky }, -- used for "Hint" diagnostic virtual text
    LspDiagnosticsSignHint = { fg = aylin.aylin_l_sky }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsFloatingHint = { fg = aylin.aylin_l_sky }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextHint = { fg = aylin.aylin_l_sky }, -- Virtual text "Hint"
    LspDiagnosticsUnderlineHint = { style = "undercurl", sp = aylin.aylin_turquoise }, -- used to underline "Hint" diagnostics.
    LspReferenceText = { fg = aylin.aylin_l_white, bg = aylin.aylin_black }, -- used for highlighting "text" references
    LspReferenceRead = { fg = aylin.aylin_l_white, bg = aylin.aylin_black }, -- used for highlighting "read" references
    LspReferenceWrite = { fg = aylin.aylin_l_white, bg = aylin.aylin_black }, -- used for highlighting "write" references

    DiagnosticError = { link = "LspDiagnosticsDefaultError" },
    DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
    DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
    DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
    DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
    DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
    DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
    DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
    DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
    DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
    DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
    DiagnosticSignError = { link = "LspDiagnosticsSignError" },
    DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
    DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
    DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
    DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
    DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
    DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
    DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
    DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
  }
  return lsp
end

theme.loadPlugins = function()
  local plugins = {
    TelescopePromptBorder = { fg = aylin.aylin_turquoise },
    TelescopeResultsBorder = { fg = aylin.aylin_l_sky },
    TelescopePreviewBorder = { fg = aylin.aylin_green },
    TelescopeSelectionCaret = { fg = aylin.aylin_aubergine },
    TelescopeSelection = { fg = aylin.aylin_marzipan },
    TelescopeMatching = { fg = aylin.aylin_sky },

    -- NvimTree
    NvimTreeRootFolder = { fg = aylin.aylin_l_sky, style = "bold" },
    NvimTreeGitDirty = { fg = aylin.aylin_purple },
    NvimTreeGitNew = { fg = aylin.aylin_green },
    NvimTreeImageFile = { fg = aylin.aylin_purple },
    NvimTreeExecFile = { fg = aylin.aylin_green },
    NvimTreeSpecialFile = { fg = aylin.aylin_sky, style = "underline" },
    NvimTreeFolderName = { fg = aylin.aylin_sap },
    NvimTreeEmptyFolderName = { fg = aylin.aylin_black },
    NvimTreeFolderIcon = { fg = aylin.aylin_l_white },
    NvimTreeIndentMarker = { fg = aylin.aylin_black },
    LspDiagnosticsError = { fg = aylin.aylin_pink },
    LspDiagnosticsWarning = { fg = aylin.aylin_purple },
    LspDiagnosticsInformation = { fg = aylin.aylin_turquoise },
    LspDiagnosticsHint = { fg = aylin.aylin_l_sky },

    CmpItemKind = { fg = aylin.aylin_purple },
    CmpItemAbbrMatch = { fg = aylin.aylin_l_white, style = "bold" },
    CmpItemAbbrMatchFuzzy = { fg = aylin.aylin_l_white, style = "bold" },
    CmpItemAbbr = { fg = aylin.aylin_l_white },
    CmpItemMenu = { fg = aylin.aylin_marzipan },

    DiagnosticError = { fg = aylin.aylin_pink },
    DiagnosticWarning = { fg = aylin.aylin_purple },
    DiagnosticInformation = { fg = aylin.aylin_aubergine},
    DiagnosticHint = { fg = aylin.aylin_marzipan },
    DiagnosticTruncateLine = { fg = aylin.aylin_l_sky },
    LspFloatWinNormal = { bg = aylin.aylin_black },
    LspFloatWinBorder = { fg = aylin.aylin_l_sky },
    LspSagaBorderTitle = { fg = aylin.aylin_turquoise },
    LspSagaHoverBorder = { fg = aylin.aylin_l_sky },
    LspSagaRenameBorder = { fg = aylin.aylin_green },
    LspSagaDefPreviewBorder = { fg = aylin.aylin_green },
    LspSagaCodeActionBorder = { fg = aylin.aylin_sky },
    LspSagaFinderSelection = { fg = aylin.aylin_green },
    LspSagaCodeActionTitle = { fg = aylin.aylin_turquoise },
    LspSagaCodeActionContent = { fg = aylin.aylin_turquoise },
    LspSagaSignatureHelpBorder = { fg = aylin.aylin_sap },
    ReferencesCount = { fg = aylin.aylin_turquoise },
    DefinitionCount = { fg = aylin.aylin_turquoise },
    DefinitionIcon = { fg = aylin.aylin_l_sky },
    ReferencesIcon = { fg = aylin.aylin_l_sky },
    TargetWord = { fg = aylin.aylin_turquoise },
  }
  return plugins
end

return theme
