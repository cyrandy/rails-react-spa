{ Link, History } = require 'react-router'
ImageList         = require './components/imageList'
ImageStore        = require 'stores/imageStore'

module.exports = React.createClass {
  mixins: [ History ]

  getInitialState: -> { images: [] }

  componentDidMount: ->
    ImageStore.listen @onChange

  componentWillUnmount: ->
    ImageStore.unlisten @onChange

  onChange: ({images}) ->
    @setState { images }
    @history.pushState(null, '/')

  render: ->
    <div>
      <Link to='/upload'><button>Upload Image</button></Link>
      <ImageList images={@state.images} />
      { @props.children }
    </div>
}
