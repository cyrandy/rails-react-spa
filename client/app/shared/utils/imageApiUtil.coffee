Promise    = require 'promise'
request    = require 'superagent'

apiUrl = document.getElementById('api-url').value

module.exports = {
  upload: (imageSrc) ->
    new Promise (resolve, reject) ->
      request
        .post apiUrl
        .send {img: imageSrc}
        .end (err, res) ->
          if err
            return reject err
          else
            return resolve res.body
}
