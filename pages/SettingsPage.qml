import QtQuick 2.9
import QtQuick.Controls 2.2

import "../UiTheme"

ApplicationPage {
    property string titleHeader: qsTr("Configurações")

    color: Theme.background

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        Spacing {
            Text {
                width: parent.width
                text: qsTr("Settings Page")
                horizontalAlignment: Qt.AlignRight
            }
        }
    }
}
