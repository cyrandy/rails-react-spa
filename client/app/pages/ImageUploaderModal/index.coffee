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

  render: ->
    <div>
      <input type='file' name='picture' accept='image/jpeg,image/png' onChange={ @handleFileSelect }/>
      {
        if @state.picSrc
          <div>
            <img className='c-preview-image' src={@state.picSrc} />
          </div>
      }
    </div>
}
