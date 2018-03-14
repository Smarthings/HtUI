import QtQuick 2.9
import QtQuick.Controls 2.2

import "../UiTheme"

ScrollablePage {
    property string titleHeader: qsTr("Aparência")
    color: Theme.background
    property var headerPage: HeaderDefault {}

    Column {
        width: parent.width
        spacing: 10
        padding: 10

        GroupBox {
            width: parent.width - parent.padding * 2
            padding: 5
            radius: 5
            title: qsTr("Tema")

            SwitchDelegate {
                width: parent.width
                text: "Dark"

                checked: settings.dark
                onClicked: settings.dark = checked

                BorderBottom {}
            }
        }

        GroupBox {
            width: parent.width - parent.padding * 2
            padding: 5
            radius: 5
            title: qsTr("Cor principal do Tema")

            Spacing {
                topPadding: 5
                bottomPadding: 5
                leftPadding: 0
                rightPadding: 0

                ComboBox {
                    width: parent.width
                    currentIndex: -1

                    model: [
                        "Lighter",
                        "Grey",
                        "LightGrey",
                        "Blue",
                        "Teal blue",
                        "Green",
                        "Yellow",
                        "Red",
                        "Orange",
                        "Purple",
                        "Pink"
                    ]

                    onCurrentIndexChanged: {
                        settings.accent = Theme.getColor(currentIndex);
                    }
                }
            }
        }
    }
}
