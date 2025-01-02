local ls = require("luasnip") -- Import LuaSnip
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- fcts: Functional Component Template
  s("fcts", {
    t("interface "),
    i(1, "component"), -- First placeholder for name
    t("Props {"),
    t({ "", "}" }),
    t({ "", "", "export default function " }),
    i(2, "component"), -- second placeholder, different from the first one
    t("() {"),
    t({ "", "  return (" }), -- Opening parentheses on a new line
    t({ "    <div>", "      " }),
    i(3, "this is a react component"), -- third placeholder to allow changes
    t({ "", "    </div>", "  );", "}" }),
  }),

  -- fctsa: Functional Component with Arrow Function
  s("fctsa", {
    t("interface "),
    i(1, "component"), -- First placeholder for name
    t("Props {"),
    t({ "", "}" }),
    t({ "", "", "const " }),
    i(2, "componentName"), -- Use second placeholder here
    t(" = () => {"),
    t({ "", "  return (" }), -- Opening parentheses on a new line
    t({ "    <div>", "      " }),
    i(3, "this is a react component"), -- Use third placeholder here
    t({ "", "    </div>", "  );", "};", "", "export default " }),
    i(2), -- refer back to the second placeholder
  }),

  -- fctsc: Functional Component with Children
  s("fctsc", {
    t("interface "),
    i(1, "component"), -- First placeholder for name
    t("Props {"),
    t({ "", "  children?: React.ReactNode;" }),
    t({ "", "}" }),
    t({ "", "", "const " }),
    i(2, "componentName"), -- Use second placeholder here
    t(": React.FC<"),
    i(1), -- reference first placeholder for type
    t("> = ({ children }) => {"),
    t({ "", "  return (" }), -- Opening parentheses on a new line
    t({ "    <div>", "      " }),
    t({ "", "      {children}", "    </div>", "  );", "};", "", "export default " }),
    i(2), -- again refer back to second placeholder
  }),
}
