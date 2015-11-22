var genWebpackConfig = require('./webpack.base.config');

module.exports = genWebpackConfig({
  jsPath: '../app/assets/javascripts',
  cssPath: '../stylesheets/style.css',
  isProduction: true
});
