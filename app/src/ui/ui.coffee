
React = require 'react/addons'
Button = require './topcoat/button/button'
ButtonBar = require './topcoat/buttonbar/buttonbar'
ButtonBarButton = require './topcoat/buttonbar/buttonbarbutton'
Checkbox = require './topcoat/checkbox/checkbox'
Input = require './topcoat/input/input'
List = require './topcoat/list/list'
ListHeader = require './topcoat/list/listheader'
ListItems = require './topcoat/list/listitems'
NavigationBar = require './topcoat/navigationbar/navigationbar'
NavigationBarItem = require './topcoat/navigationbar/navigationbaritem'
Notification = require './topcoat/notification/notification'
RadioButton = require './topcoat/radiobutton/radiobutton'
Range = require './topcoat/range/range'
SearchInput = require './topcoat/searchinput/searchinput'
Switch = require './topcoat/switch/switch'
Tab = require './topcoat/tabbar/tab'
TabBar = require './topcoat/tabbar/tabbar'
TextArea = require './topcoat/textarea/textarea'

{div, h1, hr, p, button} = React.DOM

UI = React.createClass

  render: ->
    div className: 'smooth full-height',
      NavigationBar onTop: true,

        NavigationBarItem
          position: 'left'
          width: 'quarter',
          'Left'

        NavigationBarItem
          position: 'center'
          width: 'half'
          title: true,
          'Title'

        NavigationBarItem
          position: 'right'
          width: 'quarter',
          Button quiet: true,
            'Click'

      div className: 'content on-top',

        ButtonBar {},
          ButtonBarButton large: true,
            'One'
          ButtonBarButton large: true,
            'Two'
          ButtonBarButton large: true,
            'Three'

        hr {}

        Checkbox {},
          'Check Me'

        hr {}

        RadioButton
          labelPosition: 'left',
          'Radio Me'

        hr {}

        Switch {}

        hr {}

        Notification {},
            'OFFLINE'

        hr {}

        Range {}

        hr {}

        TabBar {},
          Tab {},
            'Tab One'
          Tab {},
            'Tab Two'
          Tab {},
            'Tab Three'

        hr {}

        SearchInput {}

        hr {}

        Input placeholder: 'type here...'

        hr {}

        TextArea placeholder: 'type lots here...'

        hr {}

        List {},
          ListItems {},
            'Above the header'
          ListHeader {},
            'Fruit'
          ListItems {},
            'Apple'
            'Peach'
            'Pear'
          ListHeader {},
            'Cars'
          ListItems {},
            'Audi'
            'Subaru'
            'Volvo'
          ListHeader {},
            'One thing'
          ListItems {},
            'Thing'

module.exports = UI


