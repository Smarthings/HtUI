import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2

import "./"

Frame {
    id: control

    property int radius: 0
    padding: 1

    property color backgroundColor: Theme.view
    property color borderColor: Theme.border
    property bool border: false
    property bool borderTop: false
    property bool borderBottom: false

    implicitWidth: Math.max(background ? background.implicitWidth : 0, contentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0, contentHeight + topPadding + bottomPadding)

    contentWidth: contentItem.implicitWidth || (contentChildren.length === 1 ? contentChildren[0].implicitWidth : 0)
    contentHeight: contentItem.implicitHeight || (contentChildren.length === 1 ? contentChildren[0].implicitHeight : 0)

    background: Rectangle {
        color: control.backgroundColor
        border.color: control.borderColor
        radius: control.radius

        border.width: control.border? 1 : 0

        Rectangle {
            visible: control.padding === 1 && control.border || control.borderTop
            width: parent.width
            height: 1
            color: control.borderColor

            anchors.top: parent.top
        }

        Rectangle {
            visible: control.padding === 1 && control.border || control.borderBottom
            width: parent.width
            height: 1
            color: control.borderColor

            anchors.bottom: parent.bottom
        }
    }
}
