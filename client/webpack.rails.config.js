var config = require('./webpack.config.js')
var webpack = require('webpack');
var path = require('path');
var ExtractTextPlugin = require('extract-text-webpack-plugin');

config.output.path = path.join(__dirname, '../app/assets/javascripts')
config.plugins = [
  new ExtractTextPlugin('../stylesheets/style.css', {
    allChunks: true
  }),
  new webpack.ProvidePlugin({
    React: 'react',
  })
]

module.exports = config
