var genWebpackConfig = require('./webpack.base.config');

module.exports = genWebpackConfig({
  outputPath: '../app/assets',
  cssPath: 'stylesheets/style.css',
  jadeLoader: 'file?name=../views/welcome/[name].html.erb!jade-html?{isProduction: true}'
});
