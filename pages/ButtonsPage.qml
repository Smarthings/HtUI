import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ApplicationPage {
    property string titleHeader: qsTr("Buttons")
    color: Theme.background

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                radius: 5

                title: "Buttons"

                GridLayout {
                    width: parent.width
                    columnSpacing: 5
                    rowSpacing: 5
                    columns: 3

                    Button {
                        text: "lighter"
                        color: Theme.lighter
                    }

                    Button {
                        text: "grey"
                        color: Theme.grey
                        textStyle.color: "#fff"
                    }

                    Button {
                        text: "blue"
                        color: Theme.blue
                        textStyle.color: "#fff"
                    }

                    Button {
                        text: "tealblue"
                        color: Theme.tealblue
                    }

                    Button {
                        text: "green"
                        color: Theme.green
                    }

                    Button {
                        text: "yellow"
                        color: Theme.yellow
                    }

                    Button {
                        text: "orange"
                        color: Theme.orange
                    }

                    Button {
                        text: "purple"
                        color: Theme.purple
                    }

                    Button {
                        text: "pink"
                        color: Theme.pink
                    }
                }
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                radius: 5

                title: "Flat"

                GridLayout {
                    width: parent.width
                    columnSpacing: 5
                    rowSpacing: 5
                    columns: 3

                    Button {
                        text: "Button"
                        flat: true
                    }

                    Button {
                        text: "Button"
                        flat: true
                        textStyle.color: Theme.info
                    }

                    Button {
                        text: "Button"
                        flat: true
                        textStyle.color: Theme.warning
                    }

                    Button {
                        text: "Button"
                        flat: true
                        textStyle.color: Theme.success
                    }

                    Button {
                        text: "Button"
                        flat: true
                        textStyle.color: Theme.primary
                    }

                    Button {
                        text: "Button"
                        flat: true
                        textStyle.color: Theme.alert
                    }
                }
            }
        }
    }
}
