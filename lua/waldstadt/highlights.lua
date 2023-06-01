local M = {}

M.setup = function()
  local config = require("waldstadt").config
  local palette = require("waldstadt.palette").setup()
  local highlights = {
    Normal = { fg = palette.fg1, bg = palette.bg1 },
    NormalNC = { link = "Normal" },
    NormalSecond = { fg = palette.fg2, bg = palette.bg2 },
    NormalFloat = { fg = palette.fg4, bg = palette.bg4 },
    NormalPopup = { fg = palette.fg5, bg = palette.bg5 },
    Cursor = { reverse = config.inversion.cursor },
    lCursor = { link = "Cursor" },
    CursorLine = { bg = palette.bg3 },
    ColorColumn = { link = "CursorLine" },
    CursorColumn = { link = "CursorLine" },
    LineNr = { fg = palette.gray0, bg = palette.bg1 },
    LineNrAbove = { link = "LineNr" },
    LineNrBelow = { link = "LineNr" },
    CursorLineNr = { fg = palette.fg1 },
    SignColumn = { link = "Normal" },
    CursorLineSign = { fg = palette.fg1 },
    Folded = { fg = palette.gray0, bg = palette.bg1, italic = config.italic.folds },
    FoldColumn = { fg = palette.blue, bg = palette.bg1 },
    CursorLineFold = { link = "FoldColumn" },
    WinSeparator = { fg = palette.bg3, bg = palette.bg1 },
    VertSplit = { link = "WinSeparator" },
    EndOfBuffer = { link = "NonText" },
    ErrorMsg = { fg = palette.red },
    WarningMsg = { fg = palette.orange },
    MoreMsg = { fg = palette.yellow },
    ModeMsg = { bold = false },
    Question = { fg = palette.orange, bold = true },
    MatchParen = { bg = palette.bg4 },
    TermCursor = { reverse = config.inversion.cursor },
    TermCursorNC = { link = "TermCursor" },
    -- diagnostic
    DiagnosticOk = { fg = palette.green },
    DiagnosticInfo = { fg = palette.blue },
    DiagnosticHint = { fg = palette.aqua },
    DiagnosticWarn = { fg = palette.yellow },
    DiagnosticError = { fg = palette.red },
    DiagnosticSignOk = { fg = palette.green, reverse = config.inversion.diagnostic },
    DiagnosticSignInfo = { fg = palette.blue, reverse = config.inversion.diagnostic },
    DiagnosticSignHint = { fg = palette.aqua, reverse = config.inversion.diagnostic },
    DiagnosticSignWarn = { fg = palette.yellow, reverse = config.inversion.diagnostic },
    DiagnosticSignError = { fg = palette.red, reverse = config.inversion.diagnostic },
    DiagnosticUnderlineOk = { underline = config.underline, sp = palette.green },
    DiagnosticUnderlineInfo = { underline = config.underline, sp = palette.blue },
    DiagnosticUnderlineHint = { underline = config.underline, sp = palette.aqua },
    DiagnosticUnderlineWarn = { underline = config.underline, sp = palette.orange },
    DiagnosticUnderlineError = { underline = config.underline, sp = palette.red },
    DiagnosticDeprecated = { strikethrough = config.strikethrough, sp = palette.red },
    DiagnosticUnnecessary = { link = "DiagnosticWarn" },
    -- diff
    DiffAdd = { fg = palette.green, bg = palette.bg1, reverse = config.inversion.diff },
    DiffChange = { fg = palette.yellow, bg = palette.bg1, reverse = config.inversion.diff },
    DiffDelete = { fg = palette.red, bg = palette.bg1, reverse = config.inversion.diff },
    DiffText = { fg = palette.blue, bg = palette.bg1, reverse = config.inversion.diff },
    -- selections
    Visual = { bg = palette.bg3, reverse = config.inversion.visual },
    VisualNOS = { link = "Visual" },
    Search = { fg = palette.yellow, bg = palette.bg2, reverse = config.inversion.search },
    IncSearch = { fg = palette.orange, bg = palette.bg3, reverse = config.inversion.search },
    CurSearch = { link = "IncSearch" },
    -- highlight
    Boolean = { fg = palette.purple },
    Character = { fg = palette.aqua },
    Conceal = { fg = palette.gray2 },
    Conditional = { fg = palette.red },
    Constant = { fg = palette.purple },
    Comment = { fg = palette.gray0, italic = config.italic.comments },
    Debug = { fg = palette.orange },
    Define = { fg = palette.pink },
    Delimiter = { fg = palette.yellow },
    Directory = { fg = palette.green },
    Done = { fg = palette.green, bold = config.bold, italic = config.italic.comments },
    Error = { fg = palette.red, bold = config.bold },
    Exception = { fg = palette.red },
    Float = { fg = palette.purple },
    Function = { fg = palette.green, bold = true },
    Identifier = { fg = palette.blue },
    Ignore = { fg = palette.gray2 },
    Include = { fg = palette.red },
    Keyword = { fg = palette.red },
    Label = { fg = palette.orange },
    Macro = { fg = palette.purple },
    Method = { fg = palette.green, bold = true },
    None = { fg = palette.fg1 },
    NonText = { fg = palette.bg3 },
    Number = { fg = palette.purple },
    Operator = { fg = palette.orange },
    PreCondit = { fg = palette.pink },
    PreProc = { fg = palette.pink },
    Repeat = { fg = palette.red },
    Special = { fg = palette.yellow },
    SpecialChar = { fg = palette.yellow },
    SpecialComment = { fg = palette.gray2, italic = config.italic.comments },
    Statement = { fg = palette.red },
    StorageClass = { fg = palette.orange },
    String = { fg = palette.aqua, italic = config.italic.strings },
    Struct = { fg = palette.yellow },
    Structure = { fg = palette.yellow },
    Tag = { fg = palette.orange },
    Title = { fg = palette.orange },
    Todo = { fg = palette.blue, bold = config.bold, italic = config.italic.comments },
    Type = { fg = palette.yellow },
    Typedef = { fg = palette.red },
    Underlined = { underline = config.underline },
    Variable = { fg = palette.fg1 },
    -- treesitter
    TSAnnotation = { fg = palette.pink },
    TSAttribute = { fg = palette.pink },
    TSBoolean = { link = "Boolean" },
    TSCharacter = { link = "Character" },
    TSCharacterSpecial = { link = "SpecialChar" },
    TSComment = { link = "Comment" },
    TSConceal = { link = "Conceal" },
    TSConditional = { link = "Conditional" },
    TSConstant = { link = "Constant" },
    TSConstantBuiltin = { fg = palette.purple, italic = true },
    TSConstantMacro = { fg = palette.purple, italic = true },
    TSConstructor = { link = "Method" },
    TSDebug = { link = "Debug" },
    TSDefine = { link = "Define" },
    TSError = { link = "Error" },
    TSException = { link = "Exception" },
    TSField = { link = "Identifier" },
    TSFloat = { link = "Float" },
    TSFunction = { link = "Function" },
    TSFunctionBuiltin = { link = "Function" },
    TSFunctionCall = { link = "Function" },
    TSFunctionMacro = { link = "Function" },
    TSInclude = { link = "Include" },
    TSKeyword = { link = "Keyword" },
    TSKeywordFunction = { link = "Keyword" },
    TSKeywordOperator = { fg = palette.orange },
    TSKeywordReturn = { link = "Keyword" },
    TSLabel = { link = "Label" },
    TSMacro = { link = "Macro" },
    TSMath = { fg = palette.blue },
    TSMethod = { link = "Method" },
    TSMethodCall = { link = "Method" },
    TSNamespace = { fg = palette.yellow, italic = true },
    TSNone = { link = "None" },
    TSNumber = { link = "Number" },
    TSOperator = { link = "Operator" },
    TSParameter = { link = "Variable" },
    TSParameterReference = { link = "Variable" },
    TSPreProc = { link = "PreProc" },
    TSProperty = { link = "Identifier" },
    TSPunctuation = { link = "Delimiter" },
    TSPunctuationBracket = { fg = palette.yellow },
    TSPunctuationDelimiter = { link = "Delimiter" },
    TSPunctuationSpecial = { fg = palette.blue },
    TSRepeat = { link = "Repeat" },
    TSStorageClass = { link = "StorageClass" },
    TSStorageClassLifetime = { link = "StorageClass" },
    TSStrike = { fg = palette.gray2 },
    TSString = { link = "String" },
    TSStringEscape = { fg = palette.green, italic = config.italic.strings },
    TSStringRegex = { fg = palette.green, italic = config.italic.strings },
    TSStringSpecial = { link = "SpecialChar" },
    TSSymbol = { link = "None" },
    TSTag = { link = "Tag" },
    TSTagAttribute = { fg = palette.green },
    TSTagDelimiter = { fg = palette.green },
    TSText = { fg = palette.green },
    TSTextDanger = { fg = palette.red, bold = config.bold },
    TSTextDiffAdd = { link = "DiffAdd" },
    TSTextDiffDelete = { link = "DiffDelete" },
    TSTextEmphasis = { italic = true },
    TSTextEnvironment = { link = "Macro" },
    TSTextEnvironmentName = { link = "Type" },
    TSTextLiteral = { fg = palette.green, italic = config.italic.strings },
    TSTextNote = { fg = palette.green, bold = config.bold },
    TSTextReference = { link = "Constant" },
    TSTextStrong = { bold = true },
    TSTextTitle = { link = "Title" },
    TSTextTodo = { link = "Todo" },
    TSTextTodoChecked = { link = "Done" },
    TSTextUnderline = { link = "Underlined" },
    TSTextWarning = { fg = palette.yellow, bold = config.bold },
    TSType = { link = "Type" },
    TSTypeBuiltin = { link = "Type" },
    TSTypeDefinition = { link = "Typedef" },
    TSTypeQualifier = { fg = palette.orange },
    TSUri = { fg = palette.blue },
    TSVariable = { link = "Variable" },
    TSVariableBuiltin = { fg = palette.purple, italic = true },
    -- neovim 0.8.0 treesitter
    ["@annotation"] = { link = "TSAnnotation" },
    ["@attribute"] = { link = "TSAttribute" },
    ["@boolean"] = { link = "TSBoolean" },
    ["@character"] = { link = "TSCharacter" },
    ["@character.special"] = { link = "TSCharacterSpecial" },
    ["@comment"] = { link = "TSComment" },
    ["@conceal"] = { link = "TSConceal" },
    ["@conditional"] = { link = "TSConditional" },
    ["@constant"] = { link = "TSConstant" },
    ["@constant.builtin"] = { link = "TSConstantBuiltin" },
    ["@constant.macro"] = { link = "TSConstantMacro" },
    ["@constructor"] = { link = "TSConstructor" },
    ["@debug"] = { link = "TSDebug" },
    ["@define"] = { link = "TSDefine" },
    ["@error"] = { link = "TSError" },
    ["@exception"] = { link = "TSException" },
    ["@field"] = { link = "TSField" },
    ["@float"] = { link = "TSFloat" },
    ["@function"] = { link = "TSFunction" },
    ["@function.builtin"] = { link = "TSFunctionBuiltin" },
    ["@function.call"] = { link = "TSFunctionCall" },
    ["@function.macro"] = { link = "TSFunctionMacro" },
    ["@include"] = { link = "TSInclude" },
    ["@keyword"] = { link = "TSKeyword" },
    ["@keyword.function"] = { link = "TSKeywordFunction" },
    ["@keyword.operator"] = { link = "TSKeywordOperator" },
    ["@keyword.return"] = { link = "TSKeywordReturn" },
    ["@label"] = { link = "TSLabel" },
    ["@macro"] = { link = "TSMacro" },
    ["@math"] = { link = "TSMath" },
    ["@method"] = { link = "TSMethod" },
    ["@method.call"] = { link = "TSMethodCall" },
    ["@namespace"] = { link = "TSNamespace" },
    ["@none"] = { link = "TSNone" },
    ["@number"] = { link = "TSNumber" },
    ["@operator"] = { link = "TSOperator" },
    ["@parameter"] = { link = "TSParameter" },
    ["@parameter.reference"] = { link = "TSParameterReference" },
    ["@preproc"] = { link = "TSPreProc" },
    ["@property"] = { link = "TSProperty" },
    ["@punctuation"] = { link = "TSPunctuation" },
    ["@punctuation.bracket"] = { link = "TSPunctuationBracket" },
    ["@punctuation.delimiter"] = { link = "TSPunctuationDelimiter" },
    ["@punctuation.special"] = { link = "TSPunctuationSpecial" },
    ["@repeat"] = { link = "TSRepeat" },
    ["@spell"] = {},
    ["@storageclass"] = { link = "TSStorageClass" },
    ["@storageclass.lifetime"] = { link = "TSStorageClassLifetime" },
    ["@strike"] = { link = "TSStrike" },
    ["@string"] = { link = "TSString" },
    ["@string.escape"] = { link = "TSStringEscape" },
    ["@string.regex"] = { link = "TSStringRegex" },
    ["@string.special"] = { link = "TSStringSpecial" },
    ["@symbol"] = { link = "TSSymbol" },
    ["@tag"] = { link = "TSTag" },
    ["@tag.attribute"] = { link = "TSTagAttribute" },
    ["@tag.delimiter"] = { link = "TSTagDelimiter" },
    ["@text"] = { link = "TSText" },
    ["@text.danger"] = { link = "TSTextDanger" },
    ["@text.diff.add"] = { link = "TSTextDiffAdd" },
    ["@text.diff.delete"] = { link = "TSTextDiffDelete" },
    ["@text.emphasis"] = { link = "TSTextEmphasis" },
    ["@text.environment"] = { link = "TSTextEnvironment" },
    ["@text.environment.name"] = { link = "TSTextEnvironmentName" },
    ["@text.literal"] = { link = "TSTextLiteral" },
    ["@text.math"] = { link = "TSMath" },
    ["@text.note"] = { link = "TSTextNote" },
    ["@text.reference"] = { link = "TSTextReference" },
    ["@text.strike"] = { link = "TSStrike" },
    ["@text.strong"] = { link = "TSTextStrong" },
    ["@text.title"] = { link = "TSTextTitle" },
    ["@text.todo"] = { link = "TSTextTodo" },
    ["@text.todo.unchecked"] = { link = "TSTextTodo" },
    ["@text.todo.checked"] = { link = "TSTextTodoChecked" },
    ["@text.underline"] = { link = "TSTextUnderline" },
    ["@text.uri"] = { link = "TSUri" },
    ["@text.warning"] = { link = "TSWarning" },
    ["@todo"] = { link = "TSTodo" },
    ["@type"] = { link = "TSType" },
    ["@type.builtin"] = { link = "TSTypeBuiltin" },
    ["@type.definition"] = { link = "TSTypeDefinition" },
    ["@type.qualifier"] = { link = "TSTypeQualifier" },
    ["@uri"] = { link = "TSUri" },
    ["@variable"] = { link = "TSVariable" },
    ["@variable.builtin"] = { link = "TSVariableBuiltin" },
    -- neovim 0.9.0 treesitter
    ["@lsp"] = {},
    ["@lsp.type.class"] = { link = "TSType" },
    ["@lsp.type.comment"] = { link = "TSComment" },
    ["@lsp.type.decorator"] = { link = "TSFunction" },
    ["@lsp.type.enum"] = { link = "TSType" },
    ["@lsp.type.enumMember"] = { link = "TSProperty" },
    ["@lsp.type.function"] = { link = "TSFunction" },
    ["@lsp.type.interface"] = { link = "TSType" },
    ["@lsp.type.macro"] = { link = "TSMacro" },
    ["@lsp.type.method"] = { link = "TSMethod" },
    ["@lsp.type.namespace"] = { link = "TSNamespace" },
    ["@lsp.type.parameter"] = { link = "TSParameter" },
    ["@lsp.type.property"] = { link = "TSProperty" },
    ["@lsp.type.struct"] = { link = "TSType" },
    ["@lsp.type.type"] = { link = "TSType" },
    ["@lsp.type.typeParameter"] = { link = "TSTypeDefinition" },
    ["@lsp.type.variable"] = { link = "TSVariable" },
    ["@lsp.type.events"] = { link = "TSLabel" },
    ["@lsp.type.keyword"] = { link = "TSKeyword" },
    ["@lsp.type.modifier"] = { link = "TSTypeQualifier" },
    ["@lsp.type.number"] = { link = "TSNumber" },
    ["@lsp.type.operator"] = { link = "TSOperator" },
    ["@lsp.type.regexp"] = { link = "TSStringRegex" },
    ["@lsp.type.string"] = { link = "TSString" },
    -- tab line
    TabLine = { bg = palette.bg0 },
    TabLineSel = { bg = palette.bg1 },
    TabLineFill = { bg = palette.bg0 },
    -- popup menu
    Pmenu = { link = "NormalPopup" },
    PmenuSel = { bg = palette.bg3 },
    PmenuKind = { fg = palette.orange },
    PmenuKindSel = { link = "PmenuSel" },
    PmenuExtra = { fg = palette.pink },
    PmenuExtraSel = { link = "PmenuSel" },
    PmenuSbar = { bg = palette.gray0 },
    PmenuThumb = { bg = palette.gray2 },
    WildMenu = { link = "Pmenu" },
    -- status line
    StatusLine = { bg = palette.bg3 },
    StatusLineNC = { bg = palette.bg2 },
    StatusLineTerm = { link = "StatusLine" },
    StatusLineTermNC = { link = "StatusLineNC" },
    -- netrw
    netrwDir = { fg = palette.aqua },
    netrwClassify = { fg = palette.aqua },
    netrwLink = { fg = palette.gray0 },
    netrwSymLink = { fg = palette.fg1 },
    netrwExe = { fg = palette.yellow },
    netrwComment = { fg = palette.gray0 },
    netrwList = { fg = palette.blue },
    netrwHelpCmd = { fg = palette.aqua },
    netrwCmdSep = { fg = palette.fg3 },
    netrwVersion = { fg = palette.green },
    -- lsp info
    LspInfoTitle = { link = "Title" },
    LspInfoBorder = { link = "NormalFloat" },
    LspInfoTip = { link = "Comment" },
    LspInfoFiletype = { link = "Type" },
    LspInfoList = { link = "Function" },
    -- cmp
    CmpItemKind = { link = "PmenuKind" },
    CmpItemMenu = { link = "PmenuExtra" },
    CmpItemAbbrMatch = { fg = palette.green },
    CmpItemAbbrMatchFuzzy = { fg = palette.green, underline = true },
    -- telescope
    TelescopeNormal = { link = "NormalPopup" },
    TelescopeTitle = { link = "Title" },
    TelescopeBorder = { link = "TelescopeNormal" },
    TelescopePrompt = { link = "TelescopeNormal" },
    TelescopePromptTitle = { link = "TelescopeTitle" },
    TelescopePromptBorder = { link = "TelescopeNormal" },
    TelescopePromptPrefix = { fg = palette.gray2 },
    TelescopePromptCounter = { fg = palette.gray2 },
    TelescopePreviewTitle = { link = "TelescopeTitle" },
    TelescopePreviewBorder = { link = "TelescopeNormal" },
    TelescopeResultsTitle = { link = "TelescopeTitle" },
    TelescopeResultsBorder = { link = "TelescopeNormal" },
    TelescopeSelection = { bg = palette.bg3 },
    TelescopeSelectionCaret = { fg = palette.orange, bg = palette.bg3 },
    TelescopeMultiSelection = { fg = palette.red },
    TelescopeMultiIcon = { link = "TelescopeMultiSelection" },
    TelescopeMatching = { fg = palette.green },
    -- trouble
    TroubleNormal = { link = "NormalSecond" },
    TroubleIndent = { fg = palette.gray0 },
    TroubleText = { fg = palette.fg1 },
    TroubleLocation = { fg = palette.gray0 },
    TroubleCount = { link = "TroubleText" },
    TroubleSignInformation = { link = "TroubleInformation" },
    TroubleSignHint = { link = "TroubleHint" },
    TroubleSignWarning = { link = "TroubleWarning" },
    TroubleSignError = { link = "TroubleError" },
    TroubleSignOther = { link = "TroubleSignInformation" },
    -- nvim tree
    NvimTreeNormal = { link = "NormalSecond" },
    NvimTreeNormalNC = { link = "NvimTreeNormal" },
    NvimTreePopup = { link = "NvimTreeNormal" },
    NvimTreeSignColumn = { link = "NvimTreeNormal" },
    NvimTreeIndentMarker = { fg = palette.bg3 },
    NvimTreeRootFolder = { fg = palette.purple },
    NvimTreeSymlink = { fg = palette.aqua },
    NvimTreeExecFile = { fg = palette.green },
    NvimTreeImageFile = { fg = palette.pink },
    NvimTreeSpecialFile = { fg = palette.yellow, bold = true },
    NvimTreeOpenedFile = { fg = palette.fg2, bold = true },
    NvimTreeLspDiagnosticsInformation = { link = "DiagnosticSignInfo" },
    NvimTreeLspDiagnosticsHint = { link = "DiagnosticSignHint" },
    NvimTreeLspDiagnosticsWarning = { link = "DiagnosticSignWarn" },
    NvimTreeLspDiagnosticsError = { link = "DiagnosticSignError" },
    NvimTreeEndOfBuffer = { fg = palette.bg2 },
    NvimTreeGitDirty = { fg = palette.yellow },
    NvimTreeGitStaged = { fg = palette.yellow },
    NvimTreeGitMerge = { fg = palette.pink },
    NvimTreeGitRenamed = { fg = palette.pink },
    NvimTreeGitNew = { fg = palette.yellow },
    NvimTreeGitDeleted = { fg = palette.red },
    NvimTreeGitIgnored = { link = "Comment" },
    NvimTreeLiveFilterPrefix = { fg = palette.pink },
    NvimTreeLiveFilterValue = { bold = false },
    NvimTreeBookmark = { fg = palette.red },
    NvimTreeModifiedFile = { fg = palette.aqua },
    -- lazy
    LazyNormal = { link = "NormalPopup" },
    LazyProgressTodo = { fg = palette.gray0 },
    LazyProgressDone = { fg = palette.orange },
    LazyButton = { fg = palette.bg1, bg = palette.gray0 },
    LazyButtonActive = { fg = palette.bg1, bg = palette.orange },
    LazySpecial = { fg = palette.green },
    LazyComment = { link = "Comment" },
    LazyUrl = { fg = palette.green },
    -- mason
    MasonNormal = { link = "NormalPopup" },
    MasonHeader = { link = "Title" },
    MasonHeaderSecondary = { link = "Title" },
    MasonHighlight = { fg = palette.green },
    MasonHighlightBlock = { fg = palette.bg1, bg = palette.orange },
    MasonHighlightBlockBold = { fg = palette.bg1, bg = palette.orange, bold = true },
    MasonHighlightSecondary = { fg = palette.green },
    MasonHighlightBlockSecondary = { fg = palette.bg1, bg = palette.orange },
    MasonHighlightBlockBoldSecondary = { fg = palette.bg1, bg = palette.orange, bold = true },
    MasonMuted = { fg = palette.gray0 },
    MasonMutedBlock = { fg = palette.bg1, bg = palette.gray0 },
    MasonMutedBlockBold = { fg = palette.bg1, bg = palette.gray0, bold = true },
    MasonHeading = { bold = true },
    -- fidget
    FidgetTitle = { link = "Title" },
    FidgetTask = { link = "NonText" },
  }

  for key, value in pairs(config.overrides.highlights) do
    if highlights[key] then
      highlights[key].link = nil
    end
    highlights[key] = vim.tbl_extend("force", highlights[key] or {}, value)
  end

  return highlights
end

return M