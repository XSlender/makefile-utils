# helpers
DOTTED_LINE     = "--------------------------------------------"

# lines & breaks
LINE_BREAK      = "\\n"
LINE_RETURN     = "\\n\\n"

# Symbols
RIGHT_ARROW     = "🡆"
LEFT_ARROW      = "🡄"
UP_ARROW        = "🡅"
DOWN_ARROW      = "🡇"
CHECK_MARK      = "✔"
CROSS           = "❌"
HEART           = "❤"
WARNING_SIGN    = "⚠"
FORBIDDEN_SIGN  = "⛔"
ROCKET_SIGN     = "🚀"
STAR_SIGN       = "★"

# string functions
define str_print_title
	printf "${LINE_BREAK}"
	printf "${YELLOW}${1}${RESET}${LINE_BREAK}"
	printf "${YELLOW}${1}${DOTTED_LINE}${LINE_RETURN}"
endef

define str_print_step
	printf "${BLUE}> ${1}${RESET}${LINE_BREAK}"
endef

define str_print_error
	printf "${RED}[ERROR]: ${1}${RESET}${LINE_BREAK}"
endef

define str_print_success
	printf "${GREEN}[SUCCESS]: ${1}${RESET}${LINE_BREAK}"
endef

define str_print_warning
	printf "${YELLOW}[WARNING]: ${1}${RESET}${LINE_BREAK}"
endef
