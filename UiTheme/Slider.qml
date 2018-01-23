import QtQuick 2.9
import QtQuick.Controls 2.2

import "./"

Slider {
    id: control

    enabled: true
    opacity: enabled? 1.0 : 0.75

    readonly property bool horizontal: control.orientation === Qt.Horizontal

    padding: 0
    handle: Rectangle {
        x: control.leftPadding + (horizontal ? control.visualPosition * (control.availableWidth - width) : (control.availableWidth - width) / 2)
        y: control.topPadding + (horizontal ? (control.availableHeight - height) / 2 : control.visualPosition * (control.availableHeight - height))
        implicitWidth: 25
        implicitHeight: 25
        radius: width / 2
        color: Theme.lighter
        border.color: control.visualFocus? Theme.accent: (control.pressed ? Theme.accent : Theme.border)

        readonly property bool horizontal: control.orientation === Qt.Horizontal
    }

    background: Rectangle {
        x: control.leftPadding + (horizontal ? 0 : (control.availableWidth - width) / 2)
        y: control.topPadding + (horizontal ? (control.availableHeight - height) / 2 : 0)
        implicitWidth: horizontal ? 200 : 2
        implicitHeight: horizontal ? 2 : 200
        width: horizontal ? control.availableWidth : implicitWidth
        height: horizontal ? implicitHeight : control.availableHeight
        radius: 3
        color: Theme.border
        scale: horizontal && control.mirrored ? -1 : 1

        Rectangle {
            x: control.horizontal ? control.visualPosition : 0
            y: control.horizontal ? 0 : control.visualPosition * parent.height
            width: control.horizontal ? control.position * parent.width : 2
            height: control.horizontal ? 2 : control.position * parent.height

            radius: 3
            color: Theme.accent
        }
    }
}
