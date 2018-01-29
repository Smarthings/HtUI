import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2

import "./"

SpinBox {
    id: control

    padding: 5
    leftPadding:  0 //padding + (control.mirrored ? (up.indicator ? up.indicator.width : 0) : (down.indicator ? down.indicator.width : 0))
    //rightPadding: padding + (control.mirrored ? (down.indicator ? down.indicator.width : 0) : (up.indicator ? up.indicator.width : 0))

    validator: IntValidator {
        locale: control.locale.name
        bottom: Math.min(control.from, control.to)
        top: Math.max(control.from, control.to)
    }

    contentItem: TextInput {
        //z: 2
        text: control.textFromValue(control.value, control.locale)
        opacity: control.enabled ? 1 : 0.3

        font: control.font
        color: Theme.text
        selectionColor: Theme.checkedFocus(Theme.accent)
        selectedTextColor: Theme.checked(Theme.accent)
        verticalAlignment: Qt.AlignVCenter

        readOnly: !control.editable
        validator: control.validator
        inputMethodHints: control.inputMethodHints

        Rectangle {
            x: -6
            y: -6
            width: control.width - (up.indicator ? up.indicator.width*2 - 1 : 0) - (down.indicator ? down.indicator.width - 1 : 0)
            height: control.height
            visible: control.activeFocus
            color: "transparent"
            border.color: Theme.focus(Theme.accent)
        }
    }

    up.indicator: Rectangle {
        x: control.mirrored ? 0 : parent.width - width
        height: parent.height
        implicitWidth: 40
        implicitHeight: 25
        color: up.pressed ? Theme.pressed(Theme.accent) : "transparent"

        Rectangle {
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            width: parent.width / 3
            height: 2
            color: enabled ? Theme.text : Theme.textDisabled
        }
        Rectangle {
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            width: 2
            height: parent.width / 3
            color: enabled ? Theme.text : Theme.textDisabled
        }
    }

    down.indicator: Rectangle {
        x: control.mirrored ? 0 : parent.width - width * 2
        height: parent.height
        implicitWidth: 40
        implicitHeight: 25
        color: down.pressed ? Theme.pressed(Theme.accent) : "transparent"

        Rectangle {
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            width: parent.width / 3
            height: 2
            color: enabled ? Theme.text : Theme.textDisabled
        }
    }

    background: Rectangle {
        implicitWidth: 140
        color: "transparent"
    }
}
