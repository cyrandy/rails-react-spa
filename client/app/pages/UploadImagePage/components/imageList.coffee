{ Link } = require 'react-router'

module.exports = React.createClass {
  render: ->
    <ul className='c-image-list'>
      <li className='c-image-list__item'><Link to='/upload' className='image image--add'></Link></li>

      {
        @props.images.map (imgSrc, index) ->
          <li className='c-image-list__item' key={index}>
            <img className='image' src={imgSrc} />
          </li>
      }
    </ul>
}
