import QtQuick 2.9
import QtQuick.Controls 2.2

import "./"
import "../"

Button {
    id: root
    property color color: Theme.primary
    property alias textStyle: textStyle

    enabled: true
    opacity: enabled? 1.0 : 0.75

    background: Rectangle {
        visible: !root.flat || root.down || root.checked || root.highlighted
        implicitWidth: 100
        implicitHeight: 30


        color: root.checked || root.highlighted ?
                   (root.visualFocus ? (root.down ? Theme.checkedFocus(root.color): Theme.focus(root.color)) : (root.down ? Theme.checkedPressed(root.color) : Theme.checked(root.color))) :
                   (root.visualFocus ? (root.down ? Theme.focusPressed(root.color) : Theme.focusLight(root.color)) : (root.down ? Theme.pressed(root.color) : root.color))
        radius: height * 0.2
    }

    contentItem: Text {
        id: textStyle
        text: root.text
        font.bold: flat

        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
}
