const path = require('path')
const webpack = require('webpack')

module.exports = {
  'entry': './src/index.js',
  'output': {
    'path': path.resolve(__dirname, './bundles/')
  },
  'optimization': {
    'minimize': false
  },
  'module': {
    'rules': [{
      'test': /\.jsx?$/,
      'loader': 'babel-loader',
      'options': {
        'presets': [
          'env',
          'stage-2'
        ]
      }
    }]
  },
  'plugins': [
    new webpack.optimize.ModuleConcatenationPlugin()
  ],
  'devtool': 'source-map'
}
