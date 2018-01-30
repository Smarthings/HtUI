import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2

import "./"

Rectangle {
    id: indicator

    property Item control

    implicitWidth: 25
    implicitHeight: 25

    border.color: control.visualFocus? Theme.focus(Theme.accent) :
                   (control.down? Theme.focusPressed(Theme.accent) :
                    (control.checked? Theme.accent : Theme.componentsBorder))
    color: control.checked? Theme.accent : Theme.components

    opacity: enabled ? 1 : 0.75

    Image {
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        source: "image://default/check/" + (control.visualFocus ? Default.focusColor : Default.textColor)
        sourceSize.width: width
        sourceSize.height: height
        visible: control.checkState === Qt.Checked
    }

    Rectangle {
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        width: 16
        height: 3
        color: control.visualFocus ? Theme.focus(Theme.accent) : Theme.components
        visible: control.checkState === Qt.PartiallyChecked
    }
}
