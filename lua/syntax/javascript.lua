local PARSER_LANG = 'javascript'
local COLOR_LANG = 'Javascript'

local definitions = {
    ['('] = 'Paren',
    [')'] = 'Paren',
    ['['] = 'Paren',
    [']'] = 'Paren',

    ['{'] = 'Bracket',
    ['}'] = 'Bracket',
    ['${'] = 'Bracket',

    ['...'] = 'Operator',
    ['='] = 'Operator',
    ['+'] = 'Operator',
    ['++'] = 'Operator',
    ['-'] = 'Operator',
    ['--'] = 'Operator',
    ['*'] = 'Operator',
    ['&'] = 'Operator',
    ['+='] = 'Operator',
    ['%'] = 'Operator',
    ['~'] = 'Operator',
    ['>>>'] = 'Operator',
    ['>>'] = 'Operator',
    ['/='] = 'Operator',
    ['^'] = 'Operator',
    ['-='] = 'Operator',
    ['*='] = 'Operator',
    ['<<<'] = 'Operator',
    ['<<'] = 'Operator',
    ['^='] = 'Operator',
    ['%='] = 'Operator',
    ['|'] = 'Operator',
    ['|='] = 'Operator',
    ['&='] = 'Operator',
    ['<'] = 'Operator',
    ['>'] = 'Operator',
    ['<='] = 'Operator',
    ['>='] = 'Operator',
    ['=='] = 'Operator',
    ['!='] = 'Operator',
    ['==='] = 'Operator',
    ['!=='] = 'Operator',
    ['||'] = 'Operator',
    ['&&'] = 'Operator',

    [';'] = 'Punc',
    ['?'] = 'Punc',
    [':'] = 'Punc',
    ['.'] = 'Punc',
    ['!'] = 'Punc',
    [','] = 'Punc',

    ["'"] = 'Quote',
    ['"'] = 'Quote',
    ['`'] = 'Quote',

    const = 'Var',
    let = 'Var',
    var = 'Var',

    regex = 'Regex',
    regex_flags = 'RegexFlag',

    ['true'] = 'Bool',
    ['false'] = 'Bool',
    null = 'Null',
    number = 'Number',

    ['if'] = 'Logic',
    ['else'] = 'Logic',
    ['break'] = 'Logic',
    ['do'] = 'Logic',
    ['while'] = 'Logic',
    ['for'] = 'Logic',
    finally = 'Logic',
    ['in'] = 'Logic',
    try = 'Logic',
    catch = 'Logic',
    continue = 'Logic',
    throw = 'Logic',
    async = 'Logic',
    await = 'Logic',
    switch = 'Logic',
    case = 'Logic',
    default = 'Logic',
    yield = 'Logic',
    ['return'] = 'Logic',
    comment = 'Comment',

    ['function'] = 'Function',
    typeof = 'Function',
    instanceof = 'Function',
    delete = 'Function',
    this = 'Function',
    void = 'Function',

    class = 'Class',
    extends = 'Class',
    ['=>'] = 'Arrow',
    new = 'New',
    string = 'String',
    call_expression = 'FunctionCall',
    arguments = 'Argument',
    identifier = 'Identifier',
    shorthand_property_identifier = 'ObjProperty',
    escape_sequence = 'EscapeSeq',
    property_identifier = 'Properties',
    formal_parameters = 'Parameters',
    ERROR = 'Error',

    -- TODO: not sure how to organize these
    -- Seems quite a lot of information we have here
    ['/'] = '',
    program = '',
    pair = '',
    object = '',
    undefined = '',
    class_body = '',
    catch_clause = '',
    regex_pattern = '',
    try_statement = '',
    throw_statement = '',
    return_statement = '',
    if_statement = '',
    object_pattern = '',
    statement_block = '',
    array = '',
    variable_declaration = '',
    do_statement = '',
    switch_statement = '',
    update_expression = '',
    labeled_statement = '',
    yield_expression = '',
    computed_property_name = '',
    empty_statement = '',
    continue_statement = '',
    switch_body = '',
    switch_default = '',
    break_statement = '',
    generator_function = '',
    statement_identifier = '',
    augmented_assignment_expression = '',
    for_statement = '',
    function_declaration = '',
    unary_expression = '',
    subscript_expression = '',
    finally_clause = '',
    sequence_expression = '',
    assignment_pattern = '',
    for_in_statement = '',
    switch_case = '',
    array_pattern = '',
    class_heritage = '',
    arrow_function = '',
    new_expression = '',
    template_string = '',
    await_expression = '',
    binary_expression = '',
    class_declaration = '',
    spread_element = '',
    member_expression = '',
    ternary_expression = '',
    variable_declarator = '',
    lexical_declaration = '',
    expression_statement = '',
    assignment_expression = '',
    template_substitution = '',
    parenthesized_expression = '',
}

function setup_groups(colors)
   return {
       -- TODO: remove these later on
       -- keep them for debugging purposes
       Test1 = { bg = colors.dark_yellow },
       Test2 = { bg = colors.yellow },

       Function = { fg = colors.cyan, gui = 'italic' },
       Comment = { fg = colors.comment_grey, gui = 'italic' },
       Null = { fg = colors.dark_yellow },
       Regex = { fg = colors.cyan },
       RegexFlag = { gui = 'bold' },
       Error = { fg = colors.red },
       Parameters = { fg = colors.yellow },
       Identifier = { fg = colors.fg },
       EscapeSeq = { fg = colors.dark_green, gui = 'bold' },
       Class = { fg = colors.purple },
       Properties = { fg = colors.blue },
       Bracket = { fg = colors.cyan },
       Logic = { fg = colors.cyan, gui = 'italic' },
       Var = { fg = colors.purple },
       Quote = { fg = colors.cyan },
       Paren = { fg = colors.fg },
       Operator = { fg = colors.cyan },
       Punc = { fg = colors.fg },
       New = { fg = colors.cyan, gui = 'italic' },
       String = { fg = colors.dark_green },
       FunctionCall = { fg = colors.blue },
       Argument = { fg = colors.fg },
       ObjProperty = { fg = colors.yellow },
       Arrow = { fg = colors.purple },
       Bool = { fg = colors.dark_yellow },
       Number = { fg = colors.dark_yellow },
   }
end

return {
    get_attributes = function(colors)
        return {
            definitions = definitions,
            highlight_groups = setup_groups(colors),
            parser_lang = PARSER_LANG,
            color_lang = COLOR_LANG
        }
    end
}

