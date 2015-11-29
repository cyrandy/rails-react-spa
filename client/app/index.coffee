require './index.jade'
require './index.sass'

ReactDOM          = require 'react-dom'
{ Router, Route } = require 'react-router'
UploadImagePage   = require './pages/UploadImagePage'
ImageUploaderModal = require './pages/ImageUploaderModal'

ReactDOM.render(
  <Router>
    <Route path="/" component={UploadImagePage}>
      <Route path='upload' component={ImageUploaderModal} />
    </Route>
  </Router>
  , document.getElementById 'content'
)
