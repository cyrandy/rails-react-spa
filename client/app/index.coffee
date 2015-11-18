require './index.jade'
require './index.sass'

Root = require './pages/index'

elContent = document.getElementById 'content'
React.render <Root />, elContent
