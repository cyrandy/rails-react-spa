var webpack = require('webpack');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var path = require('path');
var autoprefixer = require('autoprefixer-core');

module.exports = {
  devServer: {
    contentBase: './public'
  },
  entry: {
    app: './app/index'
  },
  output: {
    path: path.join(__dirname, 'public'),
    filename: 'bundle.js'
  },
  resolveLoader: {
    modulesDirectories: ['node_modules']
  },
  resolve: {
    modulesDirectories: ['node_modules'],
    extensions: ['', '.js', '.jsx', '.coffee', '.cjsx']
  },
  module: {
    loaders: [
      { test: /\.coffee$/, loader: 'coffee!cjsx' },
      { test: /\.(png|woff|woff2|eot|ttf|svg)$/, loader: 'url-loader?limit=100000' },
      {
        test: /\.sass$/,
        loader: ExtractTextPlugin.extract(
          'style',
          'css?sourceMap!postcss-loader!sass?sourceMap&indentedSyntax&outputStyle=expanded'
        )
      },
      { test: /.*\.html$/, loader: 'file?name=[name].[ext]' },
      {
        test: /.*\.jade$/,
        loader: 'file?name=[name].html!jade-html'
      }
    ]
  },
  postcss: [
    autoprefixer({ browsers: ['last 2 versions', 'ie >= 10'] })
  ],
  plugins: [
    new ExtractTextPlugin('style.css', {
      allChunks: true
    }),
    new webpack.ProvidePlugin({
      React: 'react',
    })
  ]
};
