ImageUploader = require './imageUploader'
module.exports = React.createClass {
  render: ->
    <div className='c-modal-container'>
      <div className='c-modal-container__content'>
        <form>
          <ImageUploader upload={ @props.onUpload } />
        </form>
      </div>
    </div>
}
