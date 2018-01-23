import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2

import "./"

TextField {
    id: root

    property bool flat: false
    property bool darker: false
    color: Theme.text

    padding: 5
    rightPadding: 22

    enabled: true
    opacity: enabled? 1.0 : 0.75

    background: Item {
        implicitHeight: 30
        implicitWidth: 200

        Rectangle {
            anchors.fill: parent
            visible: !flat
            radius: height * 0.2

            color: darker? Theme.componentsDarker : Theme.components
            border.width: 1
            border.color: darker? Theme.componentsDarker : (root.activeFocus? Theme.accent : Theme.componentsBorder)
        }

        Rectangle {
            anchors.fill: parent
            visible: flat
            radius: height * 0.1

            color: "transparent"
            border.width: 0

            Rectangle {
                width: parent.width
                height: 1
                anchors.bottom: parent.bottom
                color: root.activeFocus? Theme.accent : Theme.componentsBorder
            }
        }

        Rectangle {
            visible: root.text !== "" && root.activeFocus
            width: 15
            height: width
            radius: width /2
            opacity: 0.75

            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            color: Theme.grey

            MouseArea {
                anchors.fill: parent
                onClicked: root.text = ""
            }
        }
    }
}
