var genWebpackConfig = require('./webpack.base.config');

module.exports = genWebpackConfig({
  jsPath: 'public',
  cssPath: 'style.css',
  isProduction: false
});
