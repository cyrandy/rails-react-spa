ImageActions = require 'actions/imageActions'

module.exports = React.createClass {
  getInitialState: -> { picSrc: null }

  handleFileSelect: (e) ->
    file = e.target.files[0]
    if !file.type.match('image.*')
      return

    reader = new FileReader()
    reader.onload = (e) =>
      @setState { picSrc: e.target.result }

    reader.readAsDataURL file

  handleUploadImage: (imageSrc) -> (e) ->
    e.preventDefault()
    ImageActions.startUploadImage imageSrc

  hideOnOuterClick: (e) ->
    @props.onClose(e) if e.target.dataset.modal

  render: ->
    <div className='c-modal-container' onClick={@hideOnOuterClick} data-modal={true}>
      <div className='c-modal-container__content'>
        <input type='file' name='picture' accept='image/jpeg,image/png' onChange={ @handleFileSelect }/>
        {
          if @state.picSrc
            <div>
              <img className='c-preview-image' src={@state.picSrc} />
              <button onClick={ @handleUploadImage(@state.picSrc) }>Upload</button>
            </div>
        }
      </div>
    </div>
}
