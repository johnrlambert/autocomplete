_ = require('underscore')
Marionette = require('backbone.marionette')

class AutoComplete.CollectionView extends Marionette.CollectionView

    ###*
     * @type {String}
    ###
    tagName: 'ul'

    ###*
     * @type {String}
    ###
    className: 'ac-suggestions dropdown-menu'

    ###*
     * @type {Object}
    ###
    attributes:
      style: 'width: 100%;'

    ###*
     * @return {Marionette.View}
    ###
    emptyView:
      Marionette.View.extend
        tagName: 'li',
        template: _.template "<a>No suggestions available</a>"

module.exports = AutocompleteCollectionView
