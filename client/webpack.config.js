var genWebpackConfig = require('./webpack.base.config');

module.exports = genWebpackConfig({
  outputPath: 'public',
  cssPath: 'stylesheets/style.css',
  jadeLoader: 'file?name=[name].html!jade-html?{isProduction: false}'
});
