util = require 'lib/util'
network = require 'lib/network'

methodMap =
  create: 'POST'
  update: 'POST'
  delete: 'POST'
  read: 'GET'

getValue = (object, prop) ->
  if val = object?[prop]
    if _.isFunction(val) then val() else val
  else
    null

module.exports = class Sync

  constructor: (@options) ->

    @options.parse ?= (response) ->
      response

  buildUrl: (url) =>

    if urlRoot = @options.urlRoot

      divider = if urlRoot.match(/\/$/) then '' else '/'

      url = url.replace /^\//, ''

      url = [urlRoot, url].join divider

    url

  sync: (method, model, options) =>

    url = @buildUrl options.url ? getValue model, 'url'

    if not options.data and model and method in ['create', 'update']

      data = JSON.stringify model.toJSON()

    network.request url,

      type: methodMap[method]

      data: data

      timeout: options.timeout

      success: (data, status, client) =>

        data = @options.parse data

        options.success? data, status, client
