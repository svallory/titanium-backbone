colors = require('styles/theme').colors

module.exports =

  view:
    layout: 'vertical'
    height: 'auto'

  table:

    view:
      borderColor: colors.table.border
      borderRadius: 11
      scrollable: false
      bottom: 11

    row:
      view:
        selectionStyle: Ti.UI.iPhone.TableViewCellSelectionStyle.NONE
      editor:
        width: '60%'
        right: 0
      label:
        view:
          left: 11
          width: '40%'
        label:
          primary:
            height: 19
            color: colors.form.label
            font:
              fontWeight: 'bold'
              fontSize: 17

  editors: require './editors'

  window: require './window'
