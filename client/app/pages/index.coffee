UploadModal = require './components/uploadModal'
ImageList = require './components/imageList'

module.exports = React.createClass {
  getInitialState: ->
    {
      modalIsOpen: false
      images: []
    }

  handleClick: ->
    @setState { modalIsOpen: true }

  handleUpload: (src) -> (e) =>
    e.preventDefault()
    images = @state.images
    images.push src
    @setState { images: images, modalIsOpen: false }

  render: ->
    <div>
      <button onClick={@handleClick}>Upload Image</button>
      {
        if @state.modalIsOpen
          <UploadModal onUpload={@handleUpload} />
      }
      <ImageList images={@state.images} />
    </div>
}
