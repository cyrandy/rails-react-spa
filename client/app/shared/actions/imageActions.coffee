alt           = require 'alt'
ImageApiUtils = require 'utils/imageApiUtil'

ImageActions = alt.createActions {
  displayName: 'ImageActions'

  startUploadImage: (imageSrc) ->
    @dispatch()

    ImageApiUtils.upload imageSrc
    .then () =>
      @actions.finishedUploadImage(imageSrc)
    .catch (err) =>
      @actions.stopUploadImage(err)

  finishedUploadImage: (imageSrc) ->
    @dispatch imageSrc

  stopUploadImage: (err) ->
    @dispatch err
}

module.exports = ImageActions
