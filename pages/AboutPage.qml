import QtQuick 2.9
import QtQuick.Controls 2.2

import "../UiTheme"

ApplicationPage {
    property string titleHeader: qsTr("Sobre / Ajuda")
    color: Theme.background

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        Spacing {
            Text {
                width: parent.width
                text: qsTr("About Page")
                horizontalAlignment: Qt.AlignRight
            }
        }
    }
}
