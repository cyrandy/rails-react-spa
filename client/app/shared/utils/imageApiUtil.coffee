Promise    = require 'promise'
request    = require 'superagent'

apiUrl = 'http://private-f7026-zillians.apiary-mock.com/auth'

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
