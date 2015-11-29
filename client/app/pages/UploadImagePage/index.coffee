{ Link } = require 'react-router'
module.exports = React.createClass {
  render: ->
    <div>
      <Link to='/upload'><button>Upload Image</button></Link>
      { @props.children }
    </div>
}
