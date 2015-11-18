module.exports = React.createClass {
  render: ->
    <div className='c-image-list'>
      {
        @props.images.map (imgSrc, index) ->
          <img className='c-image-list__image' key={index} src={imgSrc} />
      }
    </div>
}
