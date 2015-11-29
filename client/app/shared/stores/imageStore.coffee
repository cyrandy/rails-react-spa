alt = require 'alt'
ImageActions = require 'actions/imageActions'

module.exports = alt.createStore {
  displayName: 'ImageStore'

  bindListeners: {
    handleUploadImageComplete: ImageActions.FINISHED_UPLOAD_IMAGE
  }

  state: {
    images: []
  }

  handleUploadImageComplete: (imageSrc) ->
    @state.images.push imageSrc
    @setState {
      images: @state.images
    }
}
