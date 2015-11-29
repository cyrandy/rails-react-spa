require './index.jade'
require './index.sass'

ReactDOM          = require 'react-dom'
{ Router, Route } = require 'react-router'
UploadImagePage   = require './pages/UploadImagePage'

ReactDOM.render(
  <Router>
    <Route path="/" component={UploadImagePage}>
    </Route>
  </Router>
  , document.getElementById 'content'
)
