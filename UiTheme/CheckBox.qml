import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2

import "./"

CheckBox {
    id: control

    property bool rounded: false

    font.pixelSize: Theme.pixelSize

    implicitHeight: Theme.implicitHeightComponents
    padding: 10
    spacing: 10

    enabled: true
    opacity: enabled ? 1 : 0.3

    indicator: CheckIndicator {
        x: text ? (control.mirrored ? control.width - width - control.rightPadding : control.leftPadding) : control.leftPadding + (control.availableWidth - width) / 2
        y: control.topPadding + (control.availableHeight - height) / 2
        control: control

        radius: rounded? width /2 : height * 0.2
    }

    contentItem: Text {
        leftPadding: control.indicator && !control.mirrored ? control.indicator.width + control.spacing : 0
        rightPadding: control.indicator && control.mirrored ? control.indicator.width + control.spacing : 0

        text: control.text
        font: control.font
        color: !control.enabled? Theme.textDisabled : (control.down ? Theme.color50(Theme.text) : Theme.text)
        elide: Text.ElideRight
        visible: control.text
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }
}