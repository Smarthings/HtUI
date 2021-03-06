import QtQuick 2.9
import QtQuick.Controls 2.2

import "../UiTheme"

ScrollablePage {
    property string titleHeader: qsTr("Sobre / Ajuda")
    color: Theme.background
    property var headerPage: HeaderDefault {}

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
