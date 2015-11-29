module.exports = React.createClass {
  render: ->
    <div>
      <button onClick={@handleClick}>Upload Image</button>
      { @props.children }
    </div>
}
