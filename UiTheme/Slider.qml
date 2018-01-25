import QtQuick 2.9
import QtQuick.Controls 2.2

import "./"

Slider {
    id: control

    enabled: true
    opacity: enabled? 1.0 : 0.75

    readonly property bool isHorizontal: control.orientation === Qt.Horizontal

    padding: 0
    handle: Rectangle {
        x: control.leftPadding + (isHorizontal ? control.visualPosition * (control.availableWidth - width) : (control.availableWidth - width) / 2)
        y: control.topPadding + (isHorizontal ? (control.availableHeight - height) / 2 : control.visualPosition * (control.availableHeight - height))
        implicitWidth: 25
        implicitHeight: 25
        radius: width / 2
        color: Theme.lighter
        border.color: control.visualFocus? Theme.accent: (control.pressed ? Theme.accent : Theme.border)
    }

    background: Rectangle {
        x: control.leftPadding + (isHorizontal ? 0 : (control.availableWidth - width) / 2)
        y: control.topPadding + (isHorizontal ? (control.availableHeight - height) / 2 : 0)
        implicitWidth: isHorizontal ? 200 : 2
        implicitHeight: isHorizontal ? 2 : 200
        width: isHorizontal ? control.availableWidth : implicitWidth
        height: isHorizontal ? implicitHeight : control.availableHeight
        radius: 3
        color: Theme.border
        scale: isHorizontal && control.mirrored ? -1 : 1

        Rectangle {
            x: control.isHorizontal ? control.visualPosition : 0
            y: control.isHorizontal ? 0 : control.visualPosition * parent.height
            width: control.isHorizontal ? control.position * parent.width : 2
            height: control.isHorizontal ? 2 : control.position * parent.height

            radius: 3
            color: Theme.accent
        }
    }
}
