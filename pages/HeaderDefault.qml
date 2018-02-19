import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ToolBar {
    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 5
        anchors.rightMargin: 5

        ToolButton {
            text: stackView.depth > 1? "\uE314" : "\uE5D2"
            font.family: material_icons.name
            bottomPadding: -4
            radius: width /2
            font.pixelSize: 24

            onClicked: stackView.depth > 1? stackView.pop() : drawer.open()
        }

        Text {
            Layout.fillWidth: true
            padding: 10
            verticalAlignment: Text.AlignVCenter

            text: titlePage
            font.pixelSize: 20
        }
    }
}
