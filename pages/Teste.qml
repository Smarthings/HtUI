import QtQuick 2.9
import QtQuick.Controls 2.2

import "../UiTheme/"

ScrollablePage {
    width: parent.width
    height: window.height - header_height * 1.1

    property int header_height: 0

    Column {
        anchors.fill: parent

        Rectangle {
            width: parent.width
            height: 650
        }
    }
}

/*Item {
    width: parent.width
    onHeightChanged: console.log(height)

    Flickable {
        anchors.fill: parent
        contentHeight: pane.implicitHeight

        Pane {
            id: pane
            width: parent.width

            Column {
                anchors.fill: parent

                Rectangle {
                    width: parent.width
                    height: 650
                }
            }
        }
    }
}*/

/*ScrollablePage {
    height: column.childrenRect.height

    Column {
        id: column
        width: parent.width

        Rectangle {
            width: parent.width
            height: 300
        }
    }
}*/
