" Log files
" Language: Log files
" Maintainer: Travis Herrick <tthetoad@gmail.com>
" Version: 0.0.1

" Log levels
hi! def link log4jLogLevel Keyword

hi! def link log4jDebugLevel Log4jLogLevel
hi! def link log4jTraceLevel Log4jLogLevel
hi! def link log4jInfoLevel  Log4jLogLevel
hi! def link log4jWarnLevel  Log4jLogLevel

hi! def link log4jErrorLevel Error
hi! def link log4jFatalLevel log4jErrorLevel

" Log messages
hi! def link log4jMessage Underlined

hi! def link log4jDebugMessage Log4jMessage
hi! def link log4jTraceMessage Log4jMessage
hi! def link log4jInfoMessage  Log4jMessage
hi! def link log4jWarnMessage  Log4jMessage
hi! def link log4jErrorMessage Error
hi! def link log4jFatalMessage Log4jErrorMessage

" Delimiters
hi! def link log4jDelimiter Delimiter

hi! def link log4jHeader log4jDelimiter
hi! def link log4jFooter log4jDelimiter

" Misc
hi! def link log4jDate    Constant

" Clear highlighting of lines > 80 char's.
hi! clear longlines

syn match log4jHeader '^\*\{3,\}.*\*\{3,\}$'
syn match log4jFooter '^-\{3,\}.--\{3,\}$'

syn match log4jDate '\d\{4\}-\d\{2\}-\d\{2\} \d\{2\}:\d\{2\}:\d\{2\} [+-]*\d\{4\}'

syn match log4jDebugLevel '\S*DEBUG\S*'
syn match log4jTraceLevel '\S*TRACE\S*'
syn match log4jInfoLevel  '\S*INFO\S*'
syn match log4jWarnLevel  '\S*WARN\S*'
syn match log4jErrorLevel '\S*ERROR\S*'
syn match log4jFatalLevel '\S*FATAL\S*'

syn match log4jDebugMessage '^.*DEBUG.*$' contains=log4jDebugLevel
syn match log4jTraceMessage '^.*TRACE.*$' contains=log4jTraceLevel
syn match log4jInfoMessage  '^.*INFO.*$'  contains=log4jInfoLevel
syn match log4jWarnMessage  '^.*WARN.*$'  contains=log4jWarnLevel
syn match log4jErrorMessage '^.*ERROR.*$' contains=log4jErrorLevel
syn match log4jFatalMessage '^.*FATAL.*$' contains=log4jFatalLevel

let b:current_syntax = 'logfile'
