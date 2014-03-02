
React = require 'react/addons'
ReactTopcoat = require 'react-topcoat'
Button = ReactTopcoat.Button
ButtonBar = ReactTopcoat.ButtonBar
ButtonBarButton = ReactTopcoat.ButtonBarButton
Checkbox = ReactTopcoat.Checkbox
Input = ReactTopcoat.Input
List = ReactTopcoat.List
ListHeader = ReactTopcoat.ListHeader
ListItems = ReactTopcoat.ListItems
NavigationBar = ReactTopcoat.NavigationBar
NavigationBarItem = ReactTopcoat.NavigationBarItem
Notification = ReactTopcoat.Notification
RadioButton = ReactTopcoat.RadioButton
Range = ReactTopcoat.Range
SearchInput = ReactTopcoat.SearchInput
Switch = ReactTopcoat.Switch
Tab = ReactTopcoat.Tab
TabBar = ReactTopcoat.TabBar
TextArea = ReactTopcoat.TextArea

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


